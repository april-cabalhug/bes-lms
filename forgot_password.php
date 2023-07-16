<!DOCTYPE html>
<html class="no-js">
    <head>
        <title>BES LMS</title>
		<meta name="description" content="Learning Management System">
		<meta name="keywords" content="BES LMS,BESLMS,BES,LMS,BESLMS.COMXA">
		<meta name="author" content="April Rose Cabalhug">
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap -->
				<link href="admin/images/Logo.png" id="logo" rel="icon" type="image">
				<link href="admin/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
				<link href="admin/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen"/>
				<link href="admin/bootstrap/css/font-awesome.css" rel="stylesheet" media="screen"/>
			<!--	<link href="admin/bootstrap/css/my_style.css" rel="stylesheet" media="screen"/>-->
				<link href="admin/vendors/easypiechart/jquery.easy-pie-chart.css" rel="stylesheet" media="screen"/>
				<link href="admin/assets/styles.css" rel="stylesheet" media="screen"/>
				<!-- calendar css -->
				<link href="admin/vendors/fullcalendar/fullcalendar.css" rel="stylesheet" media="screen">
				<!-- index css -->
				<link href="admin/bootstrap/css/index.css" rel="stylesheet" media="screen"/>
				<!-- data table css -->
				<link href="admin/assets/DT_bootstrap.css" rel="stylesheet" media="screen"/>
				<!-- notification  -->
				<link href="admin/vendors/jGrowl/jquery.jgrowl.css" rel="stylesheet" media="screen"/>
				<!-- wysiwug  -->
				<link rel="stylesheet" type="text/css" href="admin/vendors/bootstrap-wysihtml5/src/bootstrap-wysihtml5.css"/>
		<script src="admin/vendors/jquery-1.9.1.min.js"></script>
        <script src="admin/vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>

<style>
	body#login::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;

}
</style>

    </head>
<?php
$conn = mysqli_connect('localhost','root','','u977401404_lms') or die(mysqli_error());
?> 
<body id="login">
    
    <div class="container" style="position: relative">
		<div class="row-fluid">
			<div class="span6"><div class="title_index">
							
								<div class="row-fluid">

						<div class="span12">
						
						</div>	
													
							</div>
							<div class="row-fluid">

						<div class="span4">
						<img class="index_logo" src="admin/images/Logo.png" id="logo">
						</div>	
						<div class="span8">
						
								<div class="title">
							<p class="chmsc">Bucandala Elementary School</p>
							<h3 style="font-family:Verdana;">

							<p>L&nbsp;&nbsp;M&nbsp;&nbsp;S</p>
						
							</h3>		
						</div>
			
						</div>							
							</div>
				
				<div class="row-fluid">

						<div class="span12">
						<br>
								<div class="motto">
												<p>&nbsp;</p>
										<?php
											$mission_query = mysqli_query($conn,"select * from content where title  = 'Motto' ")or die(mysqli_error());
											$mission_row = mysqli_fetch_array($mission_query);
											echo $mission_row['content'];
										?>
								</div>		
						</div>		
				</div>
			</div></div>
			<div class="span6"><div class="pull-right"><!-- start -->
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


        if (mysqli_num_rows(mysqli_query($conn, "SELECT * FROM student WHERE email='{$email}' and username='{$un}'")) > 0) {
        $query = mysqli_query($conn, "UPDATE student SET password='{$code}' WHERE email='{$email}' and username='{$un}'");
        
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
                $mail->Body    = 'Your new password: <b>'.$code.'</b><br>Use this new password to log-in in here <a href="https://bes-lms.com/lms/index.php">https://bes-lms.com/lms/index.php</a>';
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
          echo '<script>alert("Email Sent")</script>';
        }
    }else if (mysqli_num_rows(mysqli_query($conn, "SELECT * FROM teacher WHERE email='{$email}' and username='{$un}'")) > 0) {
        $query = mysqli_query($conn, "UPDATE teacher SET password='{$code}' WHERE email='{$email}' and username='{$un}'");
        
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
                $mail->Subject = 'BES LMS | Forgot Password';
                $mail->Body    = 'Your new password: <b>'.$code.'</b><br>Use this new password to log-in in here <a href="https://bes-lms.com/lms/index.php">https://bes-lms.com/lms/index.php</a>';
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
          echo '<script>alert("Email Sent")</script>';
            }
    } else {
          echo '<script>alert("Please check your Username/Email")</script>';
    }
    
}

?>
 
      <form id="verify-email-username" class="form-signin" method="post">
        <center><h3 class="form-signin-heading">Forgot Password</h3></center>
        <input type="text" class="input-block-level" id="username" name="username" placeholder="Username" required>
        <input type="text" class="input-block-level" id="email" name="email" placeholder="Email" required>
                <button name="submit" class="btn btn-info" type="submit"> Submit</button>
              </form>
			<!-- end -->
			</div></div>
	
		</div>
    </div>
    	<div class="navbar navbar-fixed-bottom navbar-inverse" style="background:#DC143C ;display: grid; place-items: center;">
           <div class="navbar-inner">
               <div class="container-fluid">
					<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</a>
							<div class="nav-collapse collapse">
								<ul class="nav" id="footer_nav"><br>
									<li class="divider-vertical"></li>
                        		<li class="active"><a href="index.php"></i>&nbsp;Home</a></li>
                        			<li class="divider-vertical"></li>
                        		<li><a href="about.php"></i>&nbsp;About</a></li>
                        			<li class="divider-vertical"></li>
                        		<li><a href="calendar_of_events.php"></i>&nbsp;Calendar</a></li>
                        			<li class="divider-vertical"></li>
                        		<li><a href="directories.php"></i>&nbsp;Directories</a></li>
                        			<li class="divider-vertical"></li>
                        		<li><a href="programs.php"></i>&nbsp;Programs</a></li>
                        			<li class="divider-vertical"></li>
                        		<li><a href="feedback.php"></i>&nbsp;Feedback</a></li>
                        			<li class="divider-vertical"></li>
								</ul>
								
							</div>
							<center>
                        		<footer>
                        		<?php
                        			$mission_query = mysqli_query($conn,"select * from content where title  = 'Footer' ")or die(mysqli_error());
                        			$mission_row = mysqli_fetch_array($mission_query);
                        			echo $mission_row['content'];
                        		?>
                        		</footer>
                            </center>
                   <!--/.nav-collapse -->
               </div>
           </div>
        </div>    
        <script src="admin/bootstrap/js/bootstrap.min.js"></script>
        <script src="admin/vendors/easypiechart/jquery.easy-pie-chart.js"></script>
        <script src="admin/assets/scripts.js"></script>
				<script>
				$(function() {
					// Easy pie charts
					$('.chart').easyPieChart({animate: 1000});
				});
				</script>
			<!-- data table -->
		<script src="admin/vendors/datatables/js/jquery.dataTables.min.js"></script>
        <script src="admin/assets/DT_bootstrap.js"></script>		
			<!-- jgrowl -->
		<script src="admin/vendors/jGrowl/jquery.jgrowl.js"></script>   
			
			<link href="admin/vendors/datepicker.css" rel="stylesheet" media="screen">
			<link href="admin/vendors/uniform.default.css" rel="stylesheet" media="screen">
			<link href="admin/vendors/chosen.min.css" rel="stylesheet" media="screen">
		<!--  -->
		<script src="admin/vendors/jquery.uniform.min.js"></script>
        <script src="admin/vendors/chosen.jquery.min.js"></script>
        <script src="admin/vendors/bootstrap-datepicker.js"></script>
		<!--  -->
			<script src="admin/vendors/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.js"></script>
			<script src="admin/vendors/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>
			<script src="admin/vendors/ckeditor/ckeditor.js"></script>
			<script src="admin/vendors/ckeditor/adapters/jquery.js"></script>
			<script type="text/javascript" src="admin/vendors/tinymce/js/tinymce/tinymce.min.js"></script>
       
		<script src="admin/assets/jquery.hoverdir.js"></script>
		<link rel="stylesheet" type="text/css" href="admin/assets//style.css" />
			<script type="text/javascript">
			$(function() {
				$('#da-thumbs > li').hoverdir();
			});
			</script>
			<script src="admin/vendors/fullcalendar/fullcalendar.js"></script>
			<script src="admin/vendors/fullcalendar/gcal.js"></script>
			<link href="admin/vendors/datepicker.css" rel="stylesheet" media="screen">
			<script src="admin/vendors/bootstrap-datepicker.js"></script>
					
						</body>
</html>