<?php include('header.php'); ?>
<?php include('session.php'); ?>
    <body>
		<?php include('navbar.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('sidebar_calendar.php'); ?>
		
                <div class="span9" id="content">
                     <div class="row-fluid">
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Events</div>
                                <div id="" class="muted pull-right"><a href="calendar_of_events.php"><i class="icon-arrow-left"></i> Back</a></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
  									<?php
										if (isset($_POST['add'])){
											$date_start = $_POST['date_start'];
											$date_end = $_POST['date_end'];
											$title = $_POST['title'];
											
											$query = mysqli_query($conn,"insert into event (date_end,date_start,event_title) values('$date_end','$date_start','$title')")or die(mysqli_error());
											?>
											<script>
											window.location = "calendar_of_events.php<?php echo '?id='.$get_id; ?>";
											</script>
										<?php
										}
										?>
				<table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
					<thead>
					        <tr>
							<th>Event</th>
							<th>Date</th>
							<th></th>
							</tr>
							
					</thead>
					<tbody>
						
         
				<?php $event_query = mysqli_query($conn,"select * from event where teacher_class_id = '' ")or die(mysqli_error());
					while($event_row = mysqli_fetch_array($event_query)){
					$id  = $event_row['event_id'];
				?>                              
					<tr id="del<?php echo $id; ?>">
				
					 <td><?php echo $event_row['event_title']; ?> </td>
                     <td><?php  echo $event_row['date_start']; ?>
						<br>To
						 <?php  echo $event_row['date_end']; ?>
					 </td>                                    
                     <td width="40">
		
					 <a  class="btn btn-danger" href="delete_event.php<?php echo '?id='.$id; ?>"><i class="icon-remove icon-large"></i></a>
			
					 </td>                                      
			
            </tr>
     
	 <?php } ?>
          
					</tbody>
				</table>
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