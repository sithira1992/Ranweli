<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 7/4/2015
 * Time: 9:33 PM
 */

switch($_GET['action'])  {
    case 'add_request' :
        add_request();
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



function add_request()
{
    $data = json_decode(file_get_contents("php://input"));
    $locId = mysql_real_escape_string($data->locId);
    $mngId = mysql_real_escape_string($data->mngId);
    $item = mysql_real_escape_string($data->item);
    $measure = mysql_real_escape_string($data->measure);
    $quantity = mysql_real_escape_string($data->quantity);
    $date = mysql_real_escape_string($data->date);
   //$upswd = mysql_real_escape_string($data->pswd);
//$uemail = mysql_real_escape_string($data->email);

    $con = mysql_connect('localhost', 'root', '');
    mysql_select_db('ranweli', $con);

    $qry_em = 'select count(*) as itm from requestform where item_name ="' . item . '"';
    $qry_res = mysql_query($qry_em);
    $res = mysql_fetch_assoc($qry_res);

    if ($res['cnt'] == 0) {
        $qry = 'INSERT INTO requestform (FK_Location,FK_ManagerName,Item,Unit,Quantity,Date) values ("' . $locId . '","' . $mngId . '","' . $item . '","' . $measure . '","' . $quantity . '","' . $date .'")';
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