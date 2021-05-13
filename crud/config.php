<?php


  $dbhost = "ec2-3-22-216-207.us-east-2.compute.amazonaws.com";
  $dbuser = "manish";
  $dbpass = "Test123456";
  $db = "connection";

  $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $db) or die("Connect failed");

#  mysql_select_db($db,$conn);
 
?>
