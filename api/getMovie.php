<?php 
require_once 'db.php'; // The mysql database connection script
$query="SELECT * FROM `ajsmoviedb`";
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);
//$result = $mysqli->affected_rows;
$numrows = mysqli_num_rows($result);
$arr = array();
if($numrows > 0){
	while($row = mysqli_fetch_assoc($result)) {
		$arr[] = $row;	
	}
}
# JSON-encode the response
echo $json_response = json_encode($arr);
?>