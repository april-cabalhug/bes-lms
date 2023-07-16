<?php
include('dbcon.php');
if (isset($_POST['delete_student'])){
$id=$_POST['selector'];
$N = count($id);
for($i=0; $i < $N; $i++)
{
	 mysqli_query($conn,"UPDATE student set student_stat = 'inactive' where student_id='$id[$i]'")or die(mysqli_error());
	 mysqli_query($conn,"DELETE FROM teacher_class_student where student_id='$id[$i]'");
}
header("location: students.php");
}
?>