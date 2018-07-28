<?php

//-------for bangla json-----------//

header('Content-Type: application/json; charset=utf-8');  

include 'connection.php';

//-------for bangla json-----------//
 mysqli_query($conn,"SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_connection = 'utf8', 
        character_set_database = 'utf8', character_set_server = 'utf8'");


$data= array();

$fetchsem = $_POST['semester'];
$fetchday = $_POST['day'];
$fetchdept = $_POST['dept'];



$query= "SELECT * FROM `classchedule` WHERE classchedule.semester='".$fetchsem."' &&  classchedule.day='".$fetchday."' && classchedule.department='".$fetchdept."'";

$result = mysqli_query($conn,$query);

while($row= mysqli_fetch_assoc($result)){
	$data[]=$row;
}

echo json_encode($data,JSON_UNESCAPED_UNICODE);

?>