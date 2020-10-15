<?php

$request_method = $_SERVER['REQUEST_METHOD'];
$response = array();
switch($request_method){
	case "GET":
	response(doGet());
	break;
	case "POST":
	response(doPost());
	break;
}

// To read data from database

function doGET(){
	$dbconnect = mysqli_connect("localhost","root","","nodeapi");
	$query = mysqli_query($dbconnect,"SELECT * FROM `product`");
	while($data = mysqli_fetch_assoc($query)){
		$response[] = array("name"=>$data['name'],"description"=>$data['description'],"ram"=>$data['ram'],"processor"=>$data['processor'],"type"=>$data['type']);
	}
	return $response;
}

//To save data in database

function doPOST(){
	if($_POST){
		$dbconnect = mysqli_connect("localhost","root","","nodeapi");
		$query = mysqli_query($dbconnect,"INSERT INTO `product` (`name`,`description`,`ram`,`processor`,`type`) VALUES ('".$_POST['name']."','".$_POST['description']."','".$_POST['ram']."','".$_POST['processor']."','".$_POST['type']."')");
		if($query == true){
			$response = array("message"=>"Insert success");
		}
		else{
			$response = array("message"=>"Insert Failed ");
		}
	}
	return $response;
}

//For output

function response($response){
echo json_encode(array($response));
}

?>