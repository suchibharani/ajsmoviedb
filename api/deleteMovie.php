<?php 
require_once 'db.php'; // The mysql database connection script
if(isset($_POST['movieId'])){
$movieId = $_POST['movieId'];
    
$query="delete from ajsmoviedb where movieid='$movieId'";
 //$query="update ajsmoviedb set status='$status' where movieid='$movieId'";
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

$result = $mysqli->affected_rows;

echo $json_response = json_encode($result);
}
?>