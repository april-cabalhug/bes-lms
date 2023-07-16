<?php
include('dbcon.php');
if (isset($_POST['activate_teacher'])){
$id=$_POST['selector'];
$N = count($id);
for($i=0; $i < $N; $i++)
{
	$result = mysqli_query($conn,"UPDATE teacher set teacher_stat = 'active' where teacher_id='$id[$i]'")or die(mysqli_error());
}
header("location: inactive_teacher.php");
}
?>