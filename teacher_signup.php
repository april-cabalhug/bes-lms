<?php
include('admin/dbcon.php');
session_start();
$username = $_POST['username'];
$code = $_POST['code'];
$email = $_POST['email'];

$query = mysqli_query($conn,"select * from teacher where  email='$email' and verification_code = '$code' ")or die(mysqli_error());
$row = mysqli_fetch_array($query);
$id = $row['teacher_id'];

$count = mysqli_num_rows($query);
if ($count > 0){
	mysqli_query($conn,"update teacher set username='$username', teacher_status = 'Registered' where teacher_id = '$id'")or die(mysqli_error());
	$_SESSION['id']=$id;
	echo 'true';
}else{
	echo 'false';
}
?>