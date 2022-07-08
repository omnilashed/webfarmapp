<?php
$host ='localhost';
$user ='root';
$pass ='';
$db ='arff';
$kon = mysqli_connect($host, $user, $pass, $db);
if(!$kon){
    die("cannot connect to database.");
}
?>