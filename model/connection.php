<?php
// mysqli object oriented
class Connection
{
    protected $_link;
    public function __construct()
    {
        require_once(APP_ROOT . "../config/config.php");
        $this->_link = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
        if ($this->_link->connect_error) {
            die("something went wrong");
        }
    }

    public function getData($query) //we can use this method for custom search, but due to short time, I'm using datatable for searching from front end
    {
        $response = $this->_link->query($query);
        if ($response->num_rows > 0) {
            $result_list = [];
            while ($row = $response->fetch_assoc()) {
                $result_list[] = $row;
            }
        } else {
            echo 'select query not working';
        }
        return $result_list;
    }

    public function executeQuery($query)
    {
        $result = $this->_link->query($query);
        if ($result) {
            return true;
        } else {
            return $this->_link->connect_error;
        }
    }
}
