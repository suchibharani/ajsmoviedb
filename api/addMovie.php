<?php 
require_once 'db.php'; // The mysql database connection script
$postdata = file_get_contents("php://input");
$request = json_decode($postdata);
//print_r($request);
//$task = $_GET['task'];
//$status = "0";
//$created = time();
//
//$query="INSERT INTO tasks(task,status,created_at)  VALUES ('$task', '$status', '$created')";
//$result = $mysqli->query($query) or die($mysqli->error.__LINE__);
//
//$result = $mysqli->affected_rows;
echo $json_response = json_encode($request->Response);
?>