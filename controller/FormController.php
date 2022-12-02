<?php

include 'model/FormModel.php';

class FormController
{
    public $model;

    function __construct()
    {
        $this->model = new FormModel();
    }
    public function view()
    {
        include 'view/home.php';
    }
    public function reportView()
    {
        include 'view/reportPage.php';
    }
    public function store()
    {
        if (isset($_REQUEST['entry_by'])) {
            $entry_by = $_REQUEST['entry_by'];
            $checkCookies = $_COOKIE["$entry_by"] ?? null;
            if (isset($checkCookies)) {
                header("Content-Type: application/json");
                echo json_encode(['status' => 403]);
                exit();
            }
        }
        if (isset($_REQUEST['amount'])) {
            $salt = "xpeedStudio"; // anything or we can use .env file or dynamic for getting salt value
            $hash_key = $_REQUEST['receipt_id'] . $salt;
            date_default_timezone_set('Asia/Dhaka');
            $this->model->amount = $_REQUEST['amount'];
            $this->model->buyer = $_REQUEST['buyer'];
            $this->model->receipt_id = $_REQUEST['receipt_id'];
            $this->model->items = json_encode($_REQUEST['item_name']);  //just need to use json_decode for getting the value as an array 
            $this->model->buyer_email = $_REQUEST['buyer_email'];
            $this->model->buyer_ip = getenv("REMOTE_ADDR");
            $this->model->note = $_REQUEST['note'];
            $this->model->city = $_REQUEST['city'];
            $this->model->phone = "88" . $_REQUEST['phone'];
            // $this->model->hash_key = sha1($hash_key);
            $this->model->hash_key = hash("sha512", $hash_key);
            $this->model->entry_by = $_REQUEST['entry_by'];
            $this->model->entry_at = date('d-m-y h:i:s');  //here we get only date, because the column type is only 'date' according to xpeddstudio task sheet instruction
            // and also set local time according to instruction(but only for date, it's not needed).    
            if ($this->model->save()) {
                $entry_by = $_REQUEST['entry_by'];
                setcookie("$entry_by", "$entry_by", time() + 86400, '/');
                header("Content-Type: application/json");
                echo json_encode(['status' => true]);
                exit();
            } else {
                header("Content-Type: application/json");
                echo json_encode(['status' => false]);
                exit();
            }
        } else {
            include(APP_ROOT . './view/home.php');
        }
    }

    public function show() //search
    {
        $this->model->id = 10;
        $user = $this->model->search();

        echo $user[0]['id'] . $user[0]['name'] . $user[0]['email'];
    }

    public function showall() //search
    {
        $users = $this->model->searchAll();
        header("Content-Type: application/json");
        echo json_encode(['data' => $users]);
        exit();
    }
}
