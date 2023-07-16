<?php
include('admin/dbcon.php');
session_start();
$username = $_POST['username'];
$code = $_POST['code'];
//$firstname = $_POST['firstname'];
//$lastname = $_POST['lastname'];
//$class_id = $_POST['class_id'];
$email = $_POST['email'];

$query = mysqli_query($conn,"select * from student where email='$email' and username='$username' and verification_code = '$code'")or die(mysqli_error());
$row = mysqli_fetch_array($query);
$id = $row['student_id'];
$count = mysqli_num_rows($query);
if ($count > 0){
	mysqli_query($conn,"update student set status = 'Registered' where student_id = '$id'")or die(mysqli_error());
	$_SESSION['id']=$id;
	echo 'true';
}else{
echo 'false';
}
?>