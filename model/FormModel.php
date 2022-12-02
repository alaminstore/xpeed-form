<?php
// include 'DB.php';
require_once(APP_ROOT . "./model/connection.php");
class FormModel extends Connection
{
    public $id, $name, $email, $password;
    public $model;
    public function __construct()
    {
        $this->model = new Connection();
    }

    public function save()
    {
        $query = "INSERT into xpeed_users (id,amount,buyer,receipt_id,items,buyer_email,buyer_ip,note,city,phone,hash_key,entry_by,entry_at) 
                VALUES(null,'$this->amount','$this->buyer','$this->receipt_id','$this->items','$this->buyer_email','$this->buyer_ip','$this->note','$this->city','$this->phone','$this->hash_key','$this->entry_by','$this->entry_at')";
        $response = $this->model->executeQuery($query);
        return $response;
    }
    public function search()
    {
        $query = "SELECT * FROM users WHERE id = '$this->id'";
        return $this->model->getData($query);
    }
    public function searchAll()
    {
        $query = "SELECT * FROM xpeed_users ORDER BY id DESC";
        return $this->model->getData($query);
    }
}
