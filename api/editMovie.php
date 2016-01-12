<?php 
require_once 'db.php'; // The mysql database connection script
if(isset($_GET['movieId'])){
$movieId = $_GET['movieId'];
$plot = $_GET['plot'];
$plot = mysql_real_escape_string($plot);

//$query="delete from ajsmoviedb where movieid='$movieId'";
$query="update ajsmoviedb set plot='$plot' where movieid='$movieId'";
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

$result = $mysqli->affected_rows;

echo $json_response = json_encode($result);
}
?>