<?php
include('dbcon.php');
$get_id = $_GET['id'];
mysqli_query($conn,"delete from event where event_id = '$get_id'")or die(mysqli_error());
?>
<script>
window.location = 'show_class_event.php';
</script>