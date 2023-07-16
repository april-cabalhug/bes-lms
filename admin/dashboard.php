<?php  include('header_dashboard.php'); ?>
<?php  include('session.php'); ?>
    <body>
		<?php include('navbar.php') ?>
        <div class="container-fluid">
            <div class="row-fluid">
					<?php include('sidebar_dashboard.php'); ?>
                <!--/span-->
                <div class="span9" id="content">
						<div class="row-fluid"></div>
						
                    <div class="row-fluid">
            
                        <!-- block -->
                        <div class="content">
            <div class="cards">
                <div class="card">
                    <div class="box">
                    	<?php 
								$query_class = mysqli_query($conn,"select * from class")or die(mysqli_error());
								$count_class = mysqli_num_rows($query_class);
								?>
                        <h1><?php echo $count_class; ?></h1>
                        <h3>Class</h3>
                    </div>
                    <div class="icon-case">
                        <img src="images/class.png" alt="">
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                    	<?php 
							$query_file = mysqli_query($conn,"select * from files")or die(mysqli_error());
							$count_file = mysqli_num_rows($query_file);
						?>
                        <h1><?php echo $count_file; ?></h1>
                        <h3>Uploaded<br>Lectures</h3>
                    </div>
                    <div class="icon-case">
                        <img src="images/download.png" alt="upload">
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                    	<?php 
							$query_subject = mysqli_query($conn,"select * from subject")or die(mysqli_error());
							$count_subject = mysqli_num_rows($query_subject);
						?>
                        <h1><?php echo $count_subject; ?></h1>
                        <h3>Subjects</h3>
                    </div>
                    <div class="icon-case">
                        <img src="images/subject.png" alt="">
                    </div>
                </div>
                
            </div>
            <div class="content-2">
                <div class="teachers">
                    <div class="title">
                        <h2>Teachers</h2>
                    </div>
                    <table>
                        <tr>
                            <th>Description</th>
                            <th>Total</th>
                            <th>Option</th>
                        </tr>
                        <tr>
                            <td>All</td>
                            <td><?php 
								$query_teacher = mysqli_query($conn,"select * from teacher where teacher_stat='active'")or die(mysqli_error());
								$count_teacher = mysqli_num_rows($query_teacher);
								?><?php echo $count_teacher; ?></td>
                            <td><a href="teachers.php" class="btn">View</a></td>
                        </tr>
                        <tr>
                            <td>Registered</td>
                            <td><?php 
								$query_reg_teacher = mysqli_query($conn,"select * from teacher where teacher_status = 'Registered' and teacher_stat='active'")or die(mysqli_error());
								$count_reg_teacher = mysqli_num_rows($query_reg_teacher);
								?><?php echo $count_reg_teacher; ?></td>
                            <td><a href="teacher_table_reg.php" class="btn">View</a></td>
                        </tr>
                        <tr>
                            <td>Unregistered</td>
                            <td><?php 
								$query_reg_teacher = mysqli_query($conn,"select * from teacher where teacher_status = 'Unregistered' and teacher_stat='active' ")or die(mysqli_error());
								$count_reg_teacher = mysqli_num_rows($query_reg_teacher);
								?><?php echo $count_reg_teacher; ?></td>
                            <td><a href="teacher_table_unreg.php" class="btn">View</a></td>
                        </tr>

                    </table>
                </div>
                <div class="students">
                    <div class="title">
                        <h2>Students</h2>
                    </div>
                    <table>
                        <tr>
                            <th>Description</th>
                            <th>Total</th>
                            <th>Option</th>
                        </tr>
                        <tr>
                            <td>All</td>
                            <td><?php 
								$query_student = mysqli_query($conn,"select * from student where student_stat='active'")or die(mysqli_error());
								$count_student = mysqli_num_rows($query_student);
								?><?php echo $count_student ?></td>
                            <td><a href="students.php" class="btn">View</a></td>
                        </tr>
                        <tr>
                            <td>Registered</td>
                            <td><?php 
								$query_student = mysqli_query($conn,"select * from student where status='Registered' and student_stat='active'")or die(mysqli_error());
								$count_student = mysqli_num_rows($query_student);
								?><?php echo $count_student ?></td>
                            <td><a href="reg_students.php" class="btn">View</a></td>
                        </tr>
                        <tr>
                            <td>Unregistered</td>
                            <td><?php 
								$query_student = mysqli_query($conn,"select * from student where status='Unregistered' and student_stat='active'")or die(mysqli_error());
								$count_student = mysqli_num_rows($query_student);
								?><?php echo $count_student ?></td>
                            <td><a href="unreg_students.php" class="btn">View</a></td>
                        </tr>

                    </table>
                </div>
            </div>
        </div>
                    </div>
                
                
                 
                 
                </div>
            </div>
    
        </div>
	<?php include('script.php'); ?>
    </body>

</html>