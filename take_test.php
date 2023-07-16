<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
<?php $class_quiz_id = $_GET['class_quiz_id']; ?>
<?php $quiz_id = $_GET['quiz_id']; ?>


<?php $query1 = mysqli_query($conn,"select * from student_class_quiz where student_id = '$session_id' and class_quiz_id = '$class_quiz_id' ")or die(mysqli_error());
	  $count = mysqli_num_rows($query1);
?>

<?php
if ($count > 0){
}else{
 mysqli_query($conn,"insert into student_class_quiz (class_quiz_id,student_id,date_taken) values('$class_quiz_id','$session_id','')");
	
}
 ?>


    <body>
		<?php include('navbar_student.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('student_quiz_link.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
					    <!-- breadcrumb -->
										<?php $class_query = mysqli_query($conn,"select * from teacher_class
										LEFT JOIN class ON class.class_id = teacher_class.class_id
										LEFT JOIN subject ON subject.subject_id = teacher_class.subject_id
										where teacher_class_id = '$get_id'")or die(mysqli_error());
										$class_row = mysqli_fetch_array($class_query);
										$class_id = $class_row['class_id'];
										$school_year = $class_row['school_year'];
										?>
					     <ul class="breadcrumb">
							<li><a href="#"><?php echo $class_row['class_name']; ?></a> <span class="divider">/</span></li>
							<li><a href="#"><?php echo $class_row['subject_title']; ?></a> <span class="divider">/</span></li>
							<li><a href="#">School Year: <?php echo $class_row['school_year']; ?></a> <span class="divider">/</span></li>
							<li><a href="#"><b>Quiz</b></a></li>
						</ul>
						 <!-- end breadcrumb -->
					 
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">

							
							<?php
if($_GET['test'] == 'ok'){
$sqlp = mysqli_query($conn,"SELECT * FROM class_quiz WHERE class_quiz_id = '$class_quiz_id'")or die(mysqli_error());
$rowp = mysqli_fetch_array($sqlp);
$x=0;
?>
									
<form action="take_test.php<?php echo '?id='.$get_id; ?>&<?php echo 'class_quiz_id='.$class_quiz_id; ?>&<?php echo 'test=done' ?>&<?php echo 'quiz_id='.$quiz_id; ?>" name="testform" method="POST" id="test-form">
<?php
										$sqla = mysqli_query($conn,"select * FROM class_quiz 
										LEFT JOIN quiz ON quiz.quiz_id  = class_quiz.quiz_id
										where teacher_class_id = '$get_id' 
										order by date_added DESC ")or die(mysqli_error());
										$rowa = mysqli_fetch_array($sqla);
					
										
?>
										<h3>Test Title: <b><?php echo $rowa['quiz_title'];?></b></h3>
										<p><b>Description:<?php echo $rowa['quiz_description'];?></b></p>
										<p></p>

										<div id="msg"></div>
					<script>
					jQuery(document).ready(function(){	
						jQuery(".questions").each(function(){
							jQuery(this).hide();
						});
						jQuery("#q_1").show();
					});
					</script>
										<script>
										jQuery(document).ready(function(){
										var nq = 0;
										var qn = 0;
											jQuery(".nextq").click(function(){
												qn = jQuery(this).attr('qn');
												nq = parseInt(qn) + 1;
												jQuery('#q_' + qn ).fadeOut();
												jQuery('#q_' + nq ).show();		
											});
										});
										</script>
<table class="questions-table table">
<tr>
<th>#</th>
<th>Question</th>
</tr>
<?php
	$sqlw = mysqli_query($conn,"SELECT * FROM quiz_question where quiz_id = '$quiz_id'  ORDER BY RAND()");
	$qt = mysqli_num_rows($sqlw); 
	while($roww = mysqli_fetch_array($sqlw)){
?>
<tr id="q_<?php echo $x=$x+1;?>" class="questions">
<td width="30" id="qa"><?php echo $x;?></td>
<td id="qa">
<?php echo $roww['question_text'];?>
<br>
<hr>
<?php
if($roww['question_type_id']=='2'){
?>
	<input name="q-<?php echo $roww['quiz_question_id'];?>" value="True" type="radio"> True&nbsp;|&nbsp;<input name="q-<?php echo $roww['quiz_question_id'];?>" value="False" type="radio"> False
<?php
} else if($roww['question_type_id']=='1') {
	$sqly = mysqli_query($conn,"SELECT * FROM answer WHERE quiz_question_id = '".$roww['quiz_question_id']."'");
	while($rowy = mysqli_fetch_array($sqly)){
	if($rowy['choices'] == 'A') {
	?>
	A.)<input name="q-<?php echo $roww['quiz_question_id'];?>" value="A" type="radio"> <?php echo $rowy['answer_text'];?><br /><br />
	<?php } else if ($rowy['choices'] == 'B') {?>                                 
	B.) <input name="q-<?php echo $roww['quiz_question_id'];?>" value="B" type="radio"> <?php echo $rowy['answer_text'];?><br /><br />
	<?php } else if ($rowy['choices'] == 'C') {?>                                 
	C.) <input name="q-<?php echo $roww['quiz_question_id'];?>" value="C" type="radio"> <?php echo $rowy['answer_text'];?><br /><br />
	<?php } else if ($rowy['choices'] == 'D') {?>                                 
	D.) <input name="q-<?php echo $roww['quiz_question_id'];?>" value="D" type="radio"> <?php echo $rowy['answer_text'];?><br /><br />
	<?php
		}
	}
}
?>
<br/>
<button onclick="return false;" name="next_question" qn="<?php echo $x;?>" class="nextq btn btn-success" id="next_<?php echo $x;?>">NEXT QUESTION <i class="icon-arrow-right"></i> </button>
<input type="hidden" name="x-<?php echo $x;?>" value="<?php echo $roww['quiz_question_id'];?>">
</td>
</tr>

<?php
} ?>

<tr>
<td></td>
<td>
<button class="btn btn-info" id="submit-test" name="submit_answer"><i class="icon-check"></i> Submit Answer</button>
</td>
</tr>
</table>
<input type="hidden" name="x" value="<?php echo $x;?>">
</form>
<?php
} else if(isset($_POST['submit_answer'])){
	$x1 = $_POST['x'];
	$score = 0;
	for($x=1;$x<=$x1;$x++){
	
		$x2 = $_POST["x-$x"];
		$q = $_POST["q-$x2"];
		
		$sql = mysqli_query($conn,"SELECT * FROM quiz_question WHERE quiz_question_id = ".$x2."");
		$row = mysqli_fetch_array($sql);
		if($row['answer'] == $q) {
			$score= $score + 1;
				$query2 = mysqli_query($conn,"select * FROM student_class_quiz_answer 
				LEFT JOIN student_class_quiz on student_class_quiz.student_class_quiz_id  = student_class_quiz_answer.student_class_quiz_id
				where student_class_quiz.student_id = '$session_id'")or die(mysqli_error());
				$row2 = mysqli_fetch_array($query2);
				$id  = $row2['exans_id'];
				$student_quiz_id  = $row2['student_class_quiz_id'];
				
				mysqli_query($conn,"insert into student_class_quiz_answer (student_id,exam_id,exam_answer,quiz_question_id,student_class_quiz_id) values('$session_id','$class_quiz_id','$q','$x2','$student_quiz_id')");
		}else{
				$query3 = mysqli_query($conn,"select * FROM student_class_quiz_answer 
				LEFT JOIN student_class_quiz on student_class_quiz.student_class_quiz_id  = student_class_quiz_answer.student_class_quiz_id
				where student_class_quiz.student_id = '$session_id'")or die(mysqli_error());
				$row3 = mysqli_fetch_array($query3);
				$id  = $row3['exans_id'];
				$student_quiz_id  = $row3['student_class_quiz_id'];

				mysqli_query($conn,"insert into student_class_quiz_answer (student_id,exam_id,exam_answer,quiz_question_id,student_class_quiz_id) values('$session_id','$class_quiz_id','$q','$x2','$student_quiz_id')");
		}
		
	} ?>
	<a href="student_quiz_list.php<?php echo '?id='.$get_id; ?>"><i class="icon-arrow-left"></i> Back</a>
	<center>
	<h3><br>Your score is <b><?php echo $score; ?></b> out of <b><?php echo ($x-1); ?></b><br/></h3>
	</center>
	<?php
	mysqli_query($conn,"UPDATE student_class_quiz SET `date_taken` = NOW(), `grade` = '".$score." out of ".($x-1)."' WHERE student_id = '$session_id' and class_quiz_id = '$class_quiz_id'")or die(mysqli_error());
	
?>

<script>
	  window.location = 'student_quiz_list.php<?php echo '?id='.$get_id; ?>'; 
</script>
<?php
	} /* else { */
?>
<br />
<?php

?>
<?php
?>
<?php

?>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
							
	
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