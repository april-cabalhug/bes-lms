   <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Add Teacher</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
								<form method="post">
										
										  <div class="control-group">
											<label>Faculty:</label>
                                          <div class="controls">
                                            <select name="department"  class="" required>
                                             	<option></option>
											<?php
											$query = mysqli_query($conn,"select * from department order by department_name");
											while($row = mysqli_fetch_array($query)){
											
											?>
											<option value="<?php echo $row['department_id']; ?>"><?php echo $row['department_name']; ?></option>
											<?php } ?>
                                            </select>
                                          </div>
                                        </div>
										
										<div class="control-group">
                                          <div class="controls">
                                            <input class="input focused" name="firstname" id="focusedInput" type="text" placeholder = "Firstname" required>
                                          </div>
                                        </div>
										
										<div class="control-group">
                                          <div class="controls">
                                            <input class="input focused" name="lastname" id="focusedInput" type="text" placeholder = "Lastname" required>
                                          </div>
                                        </div>
										
										<div class="control-group">
                                          <div class="controls">
                                            <input class="input focused" name="email" id="focusedInput" type="text" placeholder = "Email Address" required>
                                          </div>
                                        </div>									
											<div class="control-group">
                                          <div class="controls">
												<button name="save" class="btn btn-info"><i class="icon-plus-sign icon-large"></i></button>

                                          </div>
                                        </div>
                                </form>
								</div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
					
					
					    <?php
					    use PHPMailer\PHPMailer\PHPMailer;
					    use PHPMailer\PHPMailer\SMTP;
					    use PHPMailer\PHPMailer\Exception;
    					require 'vendor/autoload.php';
    					include('smtp/PHPMailerAutoload.php');

                            if (isset($_POST['save'])) {
                           
                                $firstname = $_POST['firstname'];
                                $lastname = $_POST['lastname'];
                                $email = $_POST['email'];
                                $department_id = $_POST['department'];
                                $code = (rand());
								
								
								$query = mysqli_query($conn,"select * from teacher where email = '$email'")or die(mysqli_error());
								$count = mysqli_num_rows($query);
								
								if ($count > 0){ ?>
								<script>
								alert('Email Already Exist!');
								</script>
								<?php
								}else{

								$sql = "INSERT INTO teacher (firstname,lastname,location,department_id,email,password,verification_code,teacher_status,teacher_stat) VALUES ('{$firstname}','{$lastname}','uploads/NO-IMAGE-AVAILABLE.jpg','{$department_id}','{$email}','{$code}','{$code}','Unregistered','active')";
                $result = mysqli_query($conn, $sql);

				if ($result) { 
                    $mail = new PHPMailer(true);

                    try {
                        //Server settings
                        $mail->SMTPDebug = 0;                      //Enable verbose debug output
                        $mail->isSMTP();                                            //Send using SMTP
                        $mail->Host       = 'smtp.hostinger.com';                     //Set the SMTP server to send through
                        $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
                        $mail->Username   = 'admin@bes-lms.com';                     //SMTP username
                        $mail->Password   = 'Admin@1234';                               //SMTP password
                        $mail->SMTPSecure = 'ssl';            //Enable implicit TLS encryption
                        $mail->Port       = '465';                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

                        //Recipients
                        $mail->setFrom('admin@bes-lms.com');
                        $mail->addAddress($email);

                        //Content
                        $mail->isHTML(true);                                  //Set email format to HTML
                        $mail->Subject = 'BES LMS | Email Verification';
                        $mail->Body    = 'Your LMS Account has been made. Proceed to <a href="https://bes-lms.com/signup_teacher.php">https://bes-lms.com/signup_teacher.php</a> to verify your account and enter the verification code.<br>Your temporary password: <b>'.$code.'</b><br>Verification Code: <b>'.$code.'</b>';

                        $mail->SMTPOptions=array('ssl'=>array(
                		'verify_peer'=>false,
                		'verify_peer_name'=>false,
                		'allow_self_signed'=>false
                	));

                        $mail->send();
                        echo '<script>alert("We have send an email in this email address")</script>';
                    } catch (Exception $e) {
                        echo '<script>alert("Message could not be sent. Mailer Error")</script>';
                    }
                    echo '<script>alert("Data successfully added.")</script>';
                } else {
                    echo '<script>alert("Something went wrong")</script>';
                } ?>

								<script>
							 	window.location = "teachers.php"; 
								</script>
								<?php   }} ?>
						 
						 