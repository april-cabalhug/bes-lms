<?php include('header_print.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
<body onload="print()">
	<div class="container">
		<?php
					$my_student = mysqli_query($conn,"SELECT * FROM teacher_class_student
					LEFT JOIN student ON student.student_id = teacher_class_student.student_id 
					INNER JOIN class ON class.class_id = student.class_id where teacher_class_id = '$get_id'")or die(mysqli_error());
					while($row = mysqli_fetch_array($my_student)){
					$id = $row['teacher_class_student_id'];
					?>  
		<center>
			   
			<pre><h3 style="margin-top: 30px;">Student List (<?php echo $row['class_name']; ?>)</h3></pre>
			
		</center>
			
		<table id="ready" class="table table-striped table-bordered" style="width: 100%;">
			<thead style="margin-bottom: 30px;">
				<tr>
					<th>LRN Number</th>
					<th>Last Name</th>
					<th>First Name</th>
				</tr>
			</thead>
			<tbody>
				<?php
					$my_student = mysqli_query($conn,"SELECT * FROM teacher_class_student
					LEFT JOIN student ON student.student_id = teacher_class_student.student_id 
					INNER JOIN class ON class.class_id = student.class_id where teacher_class_id = '$get_id' order by lastname ")or die(mysqli_error());
					while($row = mysqli_fetch_array($my_student)){
					$id = $row['teacher_class_student_id'];
					?>                          
					<tr id="del<?php echo $id; ?>">
						<td><?php echo $row['username']; ?></td>
					    <td><?php echo $row['lastname']; ?></td>
					    <td><?php echo $row['firstname']; ?></td> 
	                </tr>
	             
				<?php } ?>	
			</tbody>
		</table>
		<?php } ?>
	</div>

	<div class="container">
		<center><button type="" class="btn btn-info noprint" style="width: 50%" onclick="window.location.replace('print_student.php<?php echo '?id='.$get_id; ?>');">CANCEL PRINTING</button></center>
	</div>
	
		<div class = "container" align = "right" width = "20%" style = "margin-top: 5%">
				<p>____________________</p><h5 float = "right">Chairman</h5><br>
				<p>____________________</p><h5 align = "right">Principal IV</h5>
		</div>

</body>
</html>