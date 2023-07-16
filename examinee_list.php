<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
<?php 
	  $post_id = $_GET['post_id'];
	  if($post_id == ''){
	  ?>
		<script>
		window.location = "class_quiz.php<?php echo '?id='.$get_id; ?>";
		</script>
	  <?php
	  }
	
 ?>
 

    <body id="studentTableDiv">
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('quiz_link.php'); ?>
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
							<li><a href="#"><b>Examinee List</b></a></li>
						</ul>
						 <!-- end breadcrumb -->
						
						
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-right"><a href="class_quiz.php<?php echo '?id='.$get_id; ?>"><i class="icon-arrow-left"></i> Back</a></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
									<?php
										$query1 = mysqli_query($conn,"select * FROM student_class_quiz where student_class_quiz_id = '$post_id'")or die(mysqli_error());
										$row1 = mysqli_fetch_array($query1);
									
									?>
									<div class="alert alert-info">EXAMINEE LIST</div>
									
									<div id="">
  											
												
				<table cellpadding="0" cellspacing="0" border="0" class="table" id="">
						
										<thead>
										        <tr>
												<th>Student Number</th>
												<th>Full Name</th>
												<th>Grade</th>
												<th>Remarks</th>
												<th></th>
												</tr>
												
										</thead>
										<tbody>
											
                              		<?php
										$query = mysqli_query($conn,"select * FROM student_class_quiz 
										LEFT JOIN student on student.student_id  = student_class_quiz.student_id
										where class_quiz_id = '$post_id' order by date_taken DESC")or die(mysqli_error());
										while($row = mysqli_fetch_array($query)){
										$id  = $row['student_class_quiz_id'];
										$date_taken = $row['date_taken'];
										$grade = $row['grade'];
										$student_id = $row['student_id'];
										$student_class_quiz_id = $row['student_class_quiz_id'];

										$query1 = mysqli_query($conn,"select * FROM class_quiz 
										LEFT JOIN quiz on class_quiz.quiz_id = quiz.quiz_id
										where teacher_class_id = '$get_id'  order by class_quiz_id DESC ")or die(mysqli_error());
										$row1 = mysqli_fetch_array($query1);
										$id1  = $row1['class_quiz_id'];
										$quiz_id  = $row1['quiz_id'];
										$deadline  = $row1['deadline'];
									?>  
									<?php if ($date_taken == '0000-00-00 00:00:00'){ ?>
									<?php }else{ ?>
										<tr>
										 <td><?php echo $row['username']; ?></td>
                                         <td><?php echo $row['firstname']." ".$row['lastname']; ?></td>
                                         <td><?php echo $row['grade']; ?></td>                                                                        
                                         <td>
                                         	<?php if ($date_taken <= $deadline){ ?>
                                         		<strong><font color = "blue">Submitted On-Time</font></strong>
											<?php }else if ($date_taken > $deadline){ ?>
												<strong><font color = "red">Late</font></strong>
											<?php }else{ ?>
											<?php } ?>
                                         </td>
                                         <td>
                                         	<form method="post" action="exam_result.php<?php echo '?id='.$get_id ?>&<?php echo 'post_id='.$id ?>">
										 <button data-placement="bottom" title="View Student Quiz/Exam Result" id="<?php echo $id ?>view" class="btn btn-success"><i class="icon-folder-open-alt icon-large"></i></button>
										</form>
                                         </td>                                                                        
                                </tr>
                         <?php } ?>
						 <?php } ?>
										</tbody>
									</table>
									</div>
								
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