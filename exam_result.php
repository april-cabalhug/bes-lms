<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
<?php 
	  $post_id = $_GET['post_id'];
	  if($post_id == ''){
	  ?>
		<script>
		window.location = "examinee_list.php<?php echo '?id='.$get_id ?>&<?php echo 'post_id='.$id ?>";
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
							<li><a href="#"><b>Examinee Result</b></a></li>
						</ul>
						 <!-- end breadcrumb -->
						
						
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-right"><a href="examinee_list.php<?php echo '?id='.$get_id ?>&<?php echo 'post_id='.$id ?>"><i class="icon-arrow-left"></i> Back</a></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
									<?php
										$query1 = mysqli_query($conn,"select * FROM student_class_quiz_answer where student_class_quiz_id = 'post_id'")or die(mysqli_error());
										$row1 = mysqli_fetch_array($query1);
									?>
									<div class="alert alert-info">EXAMINEE RESULT</div>
									
									<div id="">
  											
				<table cellpadding="0" cellspacing="0" border="0" class="table" id="">
						
										<thead>
										        <tr>
												<th>Questions</th>
												<th>Student Answers</th>
												<th>Correct Answers</th>
												</tr>
												
										</thead>
										<tbody>
											
                              		<?php
										$query = mysqli_query($conn,"select * FROM student_class_quiz_answer 
										LEFT JOIN quiz_question ON quiz_question.quiz_question_id  = student_class_quiz_answer.quiz_question_id
										LEFT JOIN student_class_quiz ON student_class_quiz.date_taken  = student_class_quiz_answer.exans_created
										where student_class_quiz.student_class_quiz_id = '$post_id' order by exans_created DESC")or die(mysqli_error());
										while($row = mysqli_fetch_array($query)){
										$id  = $row['exans_id'];
										$question_txt = $row['question_text'];
										$answer = $row['exam_answer'];
										$correct = $row['answer'];
										$student_id = $row['student_id'];
									?>                              
										<tr>
										 <td width="450"><font size = "4"><?php echo $row['question_text']; ?></font></td>
                                         <td>
                                         	<?php if ($answer == $correct){ ?>
                                         		<strong><font size = "4" color = "green"><?php echo $row['exam_answer']; ?></font></strong>
											<?php }else if ($answer != $correct){ ?>
												<strong><font size = "4" color = "red"><?php echo $row['exam_answer']; ?></font></strong>
											<?php }else{ ?>
											<?php } ?>
                                         </td>
                                         <td><strong><font size = "4"><?php echo $row['answer']; ?></font></strong></td>                                                                      
                                </tr>
                         
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