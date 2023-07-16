<?php include('header.php'); ?>

      <?php

      use PHPMailer\PHPMailer\PHPMailer;
      use PHPMailer\PHPMailer\SMTP;
      use PHPMailer\PHPMailer\Exception;
      require 'vendor/autoload.php';
      include('smtp/PHPMailerAutoload.php');

        if (isset($_POST['submit'])){
        $un = $_POST['username'];
        $email = $_POST['email'];
        $code = (rand());


        if (mysqli_num_rows(mysqli_query($conn, "SELECT * FROM users WHERE email='{$email}'")) > 0) {
        $query = mysqli_query($conn, "UPDATE users SET password='{$code}' WHERE email='{$email}'");


        mysqli_query($conn,"insert into activity_log (date,username,action) values(NOW(),'$un','Change Password through Email Verifivation')")or die(mysqli_error());
        
        if ($query) {        
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
                $mail->Subject = 'BES LMS';
                $mail->Body    = 'Your temporary password: <b>'.$code.'</b><br>Use this temporary password to log-in in here <a href="https://bes-lms.com/lms/admin/">https://bes-lms.com/lms/admin/</a>';
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
          echo '<script>alert("Email successfully verified")</script>';
        }
    } else {
          echo '<script>alert("Email does not exist")</script>';
    }
    
}

?>

  <body id="login">
    <div class="container">

      <form id="verify-email" class="form-signin" method="post">
        <center><h3 class="form-signin-heading">Forgot Password</h3></center>
        <input type="text" class="input-block-level" id="username" name="username" placeholder="Username" required>
        <input type="text" class="input-block-level" id="email" name="email" placeholder="Email" required>
                <p style="margin: 0; padding: 0; color: #666; font-size: 16px; line-height: 25px; opacity: .6;">
                            <a href="index.php" style="margin-bottom: 40px; display: block; float: right; text-decoration: none; font-weight: bold;">
                        Back to Log-in</a></p>
                <button name="submit" class="btn btn-info" type="submit"></i> Submit</button>
              </form>
                
    </div> <!-- /container -->
    
<?php include('script.php'); ?>

  </body>
</html>