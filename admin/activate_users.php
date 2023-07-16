<?php
include('dbcon.php');
if (isset($_POST['activate_user'])){
$id=$_POST['selector'];
$N = count($id);
for($i=0; $i < $N; $i++)
{
	$result = mysqli_query($conn,"UPDATE users set status = 'active' where user_id='$id[$i]'")or die(mysqli_error());
}
header("location: inactive_admin.php");
}
?>