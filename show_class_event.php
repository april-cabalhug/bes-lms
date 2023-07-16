<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <body>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('calendar_sidebar.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
								<!-- breadcrumb -->
									<?php $class_query = mysqli_query($conn,"select * from teacher_class
									LEFT JOIN class ON class.class_id = teacher_class.class_id
									LEFT JOIN subject ON subject.subject_id = teacher_class.subject_id
									where teacher_class_id = '$get_id'")or die(mysqli_error());
									$class_row = mysqli_fetch_array($class_query);
									?>
												
									<ul class="breadcrumb">
										<li><a href="#"><?php echo $class_row['class_name']; ?></a> <span class="divider">/</span></li>
										<li><a href="#"><?php echo $class_row['subject_title']; ?></a> <span class="divider">/</span></li>
										<li><a href="#">School Year: <?php echo $class_row['school_year']; ?></a> <span class="divider">/</span></li>
										<li><a href="#"><b>My Class Calendar Events</b></a></li>
									</ul>
									<!-- end breadcrumb -->
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Events</div>
                                <div id="" class="muted pull-right"><a href="class_calendar.php<?php echo '?id='.$get_id; ?>"><i class="icon-arrow-left"></i> Back</a></div>
                            </div>
								<div class="block-content collapse in">
										
							<!-- block -->
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

		<table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
									
									<?php include('move_to_school_year.php'); ?>
										<thead>
										        <tr>
												<th>Event</th>
												<th>Date</th>
												<th></th>
												
												</tr>
												
										</thead>
										<tbody>
											
									<?php $event_query = mysqli_query($conn,"select * from event where teacher_class_id = '$get_id' ")or die(mysqli_error());
										while($event_row = mysqli_fetch_array($event_query)){
										$id  = $event_row['event_id'];
									?>                              
										<tr id="del<?php echo $id; ?>">
									
										 <td><?php echo $event_row['event_title']; ?></td>
                                         <td><?php  echo $event_row['date_start']; ?>
											<br>
											 <?php  echo $event_row['date_end']; ?>
										 </td>                                    
                                         <td width="40">
										 <form method="post" action="delete_class_event.php">
										 <input type="hidden" name="get_id" value="<?php echo $get_id; ?>">
										 <input type="hidden" name="id" value="<?php echo $id; ?>">
										 <button class="btn btn-danger" name="delete_event"><i class="icon-remove icon-large"></i></button>
										 </form>
										 </td>                                      
									
                             

                               
                                </tr>
                         
						 <?php } ?>
						   
                              
										</tbody>
									</table>			
							<!-- block -->
						
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
                </div>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>
</html>