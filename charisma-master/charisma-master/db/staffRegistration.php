<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 7/4/2015
 * Time: 9:33 PM
 */

switch($_GET['action'])  {
    case 'add_staff' :
        add_staff();
        break;

    case 'get_product' :
        get_product();
        break;

    case 'edit_product' :
        edit_product();
        break;

    case 'delete_product' :
        delete_product();
        break;

    case 'update_product' :
        update_product();
        break;
}



function add_staff()
{
    $data = json_decode(file_get_contents("php://input"));
    $fullName = mysql_real_escape_string($data->name);
    $address = mysql_real_escape_string($data->address);
    $gender = mysql_real_escape_string($data->gender);
    $nic = mysql_real_escape_string($data->nic);
    $phone = mysql_real_escape_string($data->phone);
    $position = mysql_real_escape_string($data->position);
    $email = mysql_real_escape_string($data->email);
//$upswd = mysql_real_escape_string($data->pswd);
//$uemail = mysql_real_escape_string($data->email);

    $con = mysql_connect('localhost', 'root', '');
    mysql_select_db('ranweli', $con);

    $qry_em = 'select count(*) as cnt from staffregistraion where nic ="' . $nic . '"';
    $qry_res = mysql_query($qry_em);
    $res = mysql_fetch_assoc($qry_res);

    if ($res['cnt'] == 0) {
        $qry = 'INSERT INTO staffregistraion (fullName,address,gender,nic,phone,jobPosition,email) values ("' . $fullName . '","' . $address . '","' . $gender . '","' . $nic . '","' . $phone . '","' . $position . '","' . $email . '")';
        $qry_res = mysql_query($qry);
        if ($qry_res) {
            $arr = array('msg' => "User Created Successfully!!!", 'error' => '');
            $jsn = json_encode($arr);
            print_r($jsn);
        } else {
            $arr = array('msg' => "", 'error' => 'Error In inserting record');
            $jsn = json_encode($arr);
            print_r($jsn);
        }
    } else {
        $arr = array('msg' => "", 'error' => 'User Already exists with same nic');
        $jsn = json_encode($arr);
        print_r($jsn);
    }
}
?>