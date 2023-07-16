   <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Add Student</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
								<form id="add_student" method="post">
								
								        <div class="control-group">
                                   
                                          <div class="controls">
                                            <select  name="class_id" class="" required>
                                             	<option></option>
											<?php
											$cys_query = mysqli_query($conn,"select * from class order by class_name");
											while($cys_row = mysqli_fetch_array($cys_query)){
											
											?>
											<option value="<?php echo $cys_row['class_id']; ?>"><?php echo $cys_row['class_name']; ?></option>
											<?php } ?>
                                            </select>
                                          </div>
                                        </div>
								        
								        <div class="control-group">
                                          <div class="controls">
                                            <input  name="lrn" class="input focused" id="focusedInput" type="text" minlength="12" maxlength="12" placeholder = "LRN Number" required>
                                          </div>
                                        </div>
                                        
										<div class="control-group">
                                          <div class="controls">
                                            <input name="fn" class="input focused" id="focusedInput" type="text" placeholder = "Firstname" required>
                                          </div>
                                        </div>
										
										<div class="control-group">
                                          <div class="controls">
                                            <input  name="ln" class="input focused" id="focusedInput" type="text" placeholder = "Lastname" required>
                                          </div>
                                        </div>

                                        <div class="control-group">
                                          <div class="controls">
                                            <input  name="email" class="input focused" id="focusedInput" type="text" placeholder = "Email Address" required>
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
 
    $fn = $_POST['fn'];
    $ln = $_POST['ln'];
    $class_id = $_POST['class_id'];
    $email = $_POST['email'];
    $un = $_POST['lrn'];
    $code = (rand());
								
								
			$query = mysqli_query($conn,"select * from student where email = '$email'")or die(mysqli_error());
      $count = mysqli_num_rows($query);
			
			if ($count > 0){ ?>
			<script>
			alert('Email Already Exist!');
			</script>
			<?php
			}else{

			$sql = "INSERT INTO student (firstname, lastname, location, class_id,status,email,password,verification_code,username,student_stat) VALUES ('{$fn}', '{$ln}','uploads/NO-IMAGE-AVAILABLE.jpg', '{$class_id}','Unregistered','{$email}','{$code}','{$code}','{$un}','active')";
      $result = mysqli_query($conn, $sql);

if ($result) { 
          $mail = new PHPMailer(true);

          try {
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
              $mail->Body    = 'Your LMS Account has been made. Proceed to <a href="https://bes-lms.com/signup_student.php">https://bes-lms.com/signup_student.php</a> to verify your account and enter the verfication code.<br>Your temporary password: <b>'.$code.'</b><br>Verification Code: <b>'.$code.'</b><br><p style="color:red;">Please use your LRN Number as your USERNAME upon registration. Thank you.</p>';
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
		 	window.location = "students.php"; 
			</script>
			<?php   }} ?>
	 
	 