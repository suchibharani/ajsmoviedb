<?php 
require_once 'db.php'; // The mysql database connection script
$postdata = file_get_contents("php://input");
$request = json_decode($postdata);
//print_r($request);
if(!empty($request->Title)){
$title = $request->Title;
$year = $request->Year;
$rated = $request->Rated;
$Released = $request->Released;
$Runtime = $request->Runtime;
$Genre = $request->Genre;
$Director = $request->Director;
$Writer = $request->Writer;
$Actors = $request->Actors;
$Plot = mysql_real_escape_string($request->Plot);
$Language = $request->Language;
$Country = $request->Country;
$Awards = $request->Awards;
$Poster = $request->Poster;
$Metascore = $request->Metascore;
$imdbRating = $request->imdbRating;
$imdbVotes = $request->imdbVotes;
$imdbID = $request->imdbID;
$Type = $request->Type;
$Response = $request->Response;
$created = time();
$updated = time();
$chkquery = "SELECT * FROM ajsmoviedb WHERE imdbid = '$imdbID'";
$chkresult = $mysqli->query($chkquery) or die($mysqli->error.__LINE__);
if(mysqli_num_rows($chkresult) == 0){
$query="
INSERT INTO ajsmoviedb(title,year,rated,released,runtime,genre,director,writer,actors,plot,language,country,awards,poster,metascore,imdbrating,imdbVotes,imdbid,type,response,created_at,updated_at)  
VALUES ('$title', '$year', '$rated', '$Released' , '$Runtime' , '$Genre' , '$Director' , '$Writer' , '$Actors' , '$Plot' , '$Language' , '$Country' , '$Awards' , '$Poster' , '$Metascore' , '$imdbRating' , '$imdbVotes' , '$imdbID' , '$Type' , '$Response' , '$created' , '$updated' )";
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);
$result = $mysqli->affected_rows;
//echo $json_response = json_encode('status' => 1 );
    echo "success";
}
else{
    echo "exist";
    //echo $json_response = json_encode('status' => 0 );
}
}else{
//echo $json_response = json_encode('status' => 0 );
echo "error";
}
?>