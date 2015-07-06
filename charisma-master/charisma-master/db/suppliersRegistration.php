<?php
$data = json_decode(file_get_contents("php://input"));
$suppliername = mysql_real_escape_string($data->suppliername);
$supplieraddress= mysql_real_escape_string($data->supplieraddress);
$supplierphone = mysql_real_escape_string($data->supplierphone);
$supplieremail = mysql_real_escape_string($data->supplieremail);
$supplieritem = mysql_real_escape_string($data->supplieritem);
$supplierunitprice = mysql_real_escape_string($data->supplierunitprice);
$supplierstatues = mysql_real_escape_string($data->supplierstatues);

//$upswd = mysql_real_escape_string($data->pswd);
//$uemail = mysql_real_escape_string($data->email);

$con = mysql_connect('localhost', 'root', '');
mysql_select_db('ranweli', $con);


$qry_em = 'select count(*) as ant from registersupplier where phone ="' . $supplierphone . '"';
$qry_res = mysql_query($qry_em);
$res = mysql_fetch_assoc($qry_res);

if ($res['ant'] == 0) {
    $qry = 'INSERT INTO registersupplier (fullname,address,phone,email,supitem,unitprice,statues) values ("' . $suppliername . '","' . $supplieraddress . '","' . $supplierphone . '","' . $supplieremail . '","' . $supplieritem . '","' . $supplierunitprice . '","' . $supplierstatues . '")';
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