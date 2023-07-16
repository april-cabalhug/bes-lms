   <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Add User</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
								<form method="post">
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
                                            <input class="input focused" name="username" id="focusedInput" type="text" placeholder = "Username" required>
                                          </div>
                                        </div>
										
										<div class="control-group">
                                          <div class="controls">
                                            <input class="input focused" name="email" id="focusedInput" type="text" placeholder = "Email" required>
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

        if (isset($_POST['save'])){
        $firstname = $_POST['firstname'];
        $lastname = $_POST['lastname'];
        $username = $_POST['username'];
        $email = $_POST['email'];
        $code = (rand());


        $query = mysqli_query($conn,"select * from users where email = '$email'")or die(mysqli_error());
        $count = mysqli_num_rows($query);


        if ($count > 0){ ?>
        <script>
        alert('Email Already Exist');
        </script>
        <?php
        }else{
        $sql = "INSERT INTO users (username,email,password,firstname,lastname,verification_code,location,status) VALUES ('{$username}','{$email}','{$code}','{$firstname}','{$lastname}','{$code}','uploads/NO-IMAGE-AVAILABLE.jpg','active')";
        $result = mysqli_query($conn, $sql);

        mysqli_query($conn,"insert into activity_log (date,username,action) values(NOW(),'$username','Add User $username')")or die(mysqli_error());
        
        if ($result) { 
          //Create an instance; passing `true` enables exceptions
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
              $mail->Body    = 'Your LMS Admin Account has been made. Please login to <a href="https://bes-lms.com/admin/">https://bes-lms.com/admin/</a> and use your temporary password to log-in.<br>Your temporary password: <b>'.$code.'</b>';
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
          echo '<script>alert("User successfully added.")</script>';
      } else {
          echo '<script>alert("Something went wrong")</script>';
      } ?>

<script>
window.location = "admin_user.php";
</script>
      <?php
}
}
?>