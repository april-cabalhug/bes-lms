 <form id="signin_student" class="form-signin" method="post">
	<h4 class="form-signin-heading"><i class="icon-plus-sign"></i> Add Event</h4>
	    <input type="text" class="input-block-level datepicker" name="date_start" id="date01" placeholder="Date Start" required/>
	    <input type="text" class="input-block-level datepicker" name="date_end" id="date01" placeholder="Date End" required/>
		<input type="text" class="input-block-level" id="username" name="title" placeholder="Title" required/>
	<button id="signin" name="add" class="btn btn-info" type="submit"><i class="icon-save"></i> Save</button>
	<div id="" class="muted pull-right">
		<a href="show_class_event.php<?php echo '?id='.$get_id; ?>" class="btn btn-success"><i class="fa fa-eye"></i> View All</a>
	</div>
</form>
<?php
if (isset($_POST['add'])){
	$date_start = $_POST['date_start'];
	$date_end = $_POST['date_end'];
	$title = $_POST['title'];
	
	$query = mysqli_query($conn,"insert into event (date_end,date_start,event_title,teacher_class_id) values('$date_end','$date_start','$title','$get_id')")or die(mysqli_error());
	?>
	<script>
	window.location = "class_calendar.php<?php echo '?id='.$get_id; ?>";
	</script>
<?php
}
?>
