<?php

$servername="localhost";
$username="root";
$password="";
$db="blogging_site";

$conn=mysqli_connect($servername,$username,$password,$db,3306);

if(!$conn){
    die("Connection failed: " . $conn->connect_error);
}

?>