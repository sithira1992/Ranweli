<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 7/4/2015
 * Time: 9:33 PM
 */


$data = json_decode(file_get_contents("php://input"));
$item = mysql_real_escape_string($data->item);
$unitprice= mysql_real_escape_string($data->unitprice);
$quantity = mysql_real_escape_string($data->quantity);
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
}else{
    $arr = array('msg' => "", 'error' => 'User Already exists with same nic');
    $jsn = json_encode($arr);
    print_r($jsn);
}

?>