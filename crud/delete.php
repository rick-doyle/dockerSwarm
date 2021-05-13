<?php
include 'config.php';

$ID=$_GET['id'];
$sql="DELETE FROM tbl_connect WHERE tbl_id='$ID'";
mysqli_query($conn,$sql);
header('Location:index.php');
?>
