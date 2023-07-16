<?php
include('dbcon.php');
if (isset($_POST['activate_student'])){
$id=$_POST['selector'];
$N = count($id);
for($i=0; $i < $N; $i++)
{
	 $result = mysqli_query($conn,"UPDATE student set student_stat = 'active' where student_id='$id[$i]'")or die(mysqli_error());
}
header("location: inactive_student.php");
}
?>