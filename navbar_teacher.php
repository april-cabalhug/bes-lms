	<div class="navbar navbar-fixed-top navbar-inverse">
           <div class="navbar-inner">
               <div class="container-fluid">
					<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</a>
						<a class="brand" href="dasboard_teacher.php"><img src="admin/images/Capture2.PNG" width="145" style="float:left;"></a>	
							<div class="nav-collapse collapse">
								<ul class="nav pull-right">
								    <?php
                        			$message_query = mysqli_query($conn,"select * from message where reciever_id = '$session_id' and message_status != 'read' ")or die(mysqli_error());
                        			$count_message = mysqli_num_rows($message_query);
                        			?>
                            		<li><a href="teacher_message.php"><i class="icon-envelope-alt"  style="font-size:30px"></i>
                            		<?php if($count_message == '0'){
                    				}else{ ?>
                    					<span class="badge badge-important"><?php echo $count_message; ?></span>
                    				<?php } ?>
                            		</a></li>
								    <?php include('teacher_count.php'); ?>
									    <li><a href="notification_teacher.php"><i class="fa fa-bell-o" style="font-size:30px"></i>
                                			<?php if($not_read == '0'){
                                				}else{ ?>
                                					<span class="badge badge-important"><?php echo $not_read; ?></span>
                                				<?php } ?>
                                		</a></li>
								    <?php $query= mysqli_query($conn,"select * from teacher where teacher_id = '$session_id'")or die(mysqli_error());
														$row = mysqli_fetch_array($query);
												?>
												<li class="dropdown">
													<a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"><img class="img-circle" src="admin/<?php echo $row['location']; ?>"height="30" width="30" style="float:left;">&nbsp;<?php echo $row['firstname']." ".$row['lastname'];  ?><i class="caret"></i>
													<br><h7 style="color:cyan;">&nbsp;T E A C H E R</h7></a>
															<ul class="dropdown-menu">
                                                        		<li>
																	<a href="change_password_teacher.php"><i class="icon-circle"></i> Change Password</a>
																	<a href="#myModal" data-toggle="modal"><i class="icon-picture"></i> Change Avatar</a>
																</li>
																<li class="divider"></li>
																<li><a href="logout.php"><i class="icon-signout"></i>&nbsp;Logout</a></li>
															</ul>
								    </li>
								</ul>
								
							</div>
                   <!--/.nav-collapse -->
               </div>
           </div>
</div>
<?php include('avatar_modal.php'); ?>		