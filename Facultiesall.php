<?php
//-------for bangla json-----------//
header('Content-Type: application/json; charset=utf-8');  
require_once 'connection.php';

//-------for bangla json-----------//
 mysqli_query($conn,"SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_connection = 'utf8', 
        character_set_database = 'utf8', character_set_server = 'utf8'");

$query="SELECT * FROM faculties";

$allData= array();

if($result = mysqli_query($conn,$query)){
	while ($row= mysqli_fetch_assoc($result)){
		$allData[]= $row;
	}
}else{
	echo mysqli_error($conn);
}

//-------Here JSON UNSCPAED for bangla json-----------//
echo json_encode($allData,JSON_UNESCAPED_UNICODE);
?>