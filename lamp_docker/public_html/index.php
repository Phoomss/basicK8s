<?php
    $host = 'mysql';
    $username = 'admin';
    $password = '1234';

    $connect = mysqli_connect($host, $username, $password);

    $db = mysqli_select_db($connect, database: 'attendance_db');

    if($connect){
        $sql = 'SELECT * FROM users';
        $result = mysqli_query($connect, $sql);
        $data = array();
        while($row = mysqli_fetch_array($result)){
            $data[] = $row;
        }

        header('Content-Type: application/json; charset=utf-8');
        echo json_encode($data);
    }else{
        echo 'Database connection failed';
    }

?>