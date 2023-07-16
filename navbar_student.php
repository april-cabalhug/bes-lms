<div class="navbar navbar-fixed-top navbar-inverse">
        <div class="navbar-inner">
            <div class="container-fluid">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span>
					<span class="icon-bar"></span><span class="icon-bar"></span>
                </a>
                <a class="brand" href="dashboard_student.php"><img src="admin/images/Capture2.PNG" width="145" style="float:left;"></a>
					<div class="nav-collapse collapse">
						<ul class="nav pull-right">
							<?php $query= mysqli_query($conn,"select * from student where student_id = '$session_id'")or die(mysqli_error());
									$row = mysqli_fetch_array($query);
							?>
							<?php
                            			$message_query = mysqli_query($conn,"select * from message where reciever_id = '$session_id' and message_status != 'read' ")or die(mysqli_error());
                            			$count_message = mysqli_num_rows($message_query);
                            			?>
                            			<li class="">
                            			<a href="student_message.php"><i class="icon-envelope-alt"  style="font-size:30px"></i>
                            				<?php if($count_message == '0'){
                            				}else{ ?>
                            					<span class="badge badge-important"><?php echo $count_message; ?></span>
                            				<?php } ?>
                            			</a>
                            			</li>
							<?php include('count.php'); ?>
									    <li class="">
                            				<a href="student_notification.php"><i class="fa fa-bell-o" style="font-size:30px"></i>
                            				<?php if($not_read == '0'){
                            				}else{ ?>
                            					<span class="badge badge-important"><?php echo $not_read; ?></span>
                            				<?php } ?>
                            				</a>
                            			</li>
							<li class="dropdown">
								<a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"> <img class="img-circle" src="admin/<?php echo $row['location']; ?>"height="35" width="35"> Hello, <h7 style="color: cyan;"><?php echo $row['firstname'];  ?></h7> <i class="caret"></i></a>
									<ul class="dropdown-menu">
										<li><a tabindex="-1" href="change_password_student.php"><i class="icon-circle"></i> Change Password</a></li>
										<li><a tabindex="-1" href="#myModal_student" data-toggle="modal"><i class="icon-picture"></i> Change Avatar</a></li>
										<li class="divider"></li>
										<li>
											<a tabindex="-1" href="logout.php"><i class="icon-signout"></i>&nbsp;Logout</a>
										</li>
									</ul>
							</li>
						</ul>
					</div>
            </div>
        </div>
</div>
<?php include('avatar_modal_student.php'); ?>	