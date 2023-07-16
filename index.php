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
			<div class="span6"><div class="pull-right">
						<form id="login_form1" class="form-signin" method="post">
						<h3 class="form-signin-heading"><i class="icon-lock"></i> SIGN IN</h3>
						<input type="text" class="input-block-level" id="username" name="username" placeholder="Username" required>
						<input type="password" class="input-block-level" id="password" name="password" placeholder="Password" required>
						<p style="margin: 0; padding: 0; color: #666; font-size: 16px; line-height: 25px; opacity: .6;">
							<a href="forgot_password.php" style="margin-bottom: 40px; display: block; float: right; text-decoration: none; font-weight: bold;">
						Forgot Password?</a></p>
						<button data-placement="right" title="Click Here to Sign In" id="signin" name="login" class="btn btn-info" type="submit"> Sign In</button>
														<script type="text/javascript">
														$(document).ready(function(){
															$('#signin').tooltip('show');
															$('#signin').tooltip('hide');
														});
														</script>		
			</form>
						<script>
						jQuery(document).ready(function(){
						jQuery("#login_form1").submit(function(e){
								e.preventDefault();
								var formData = jQuery(this).serialize();
								$.ajax({
									type: "POST",
									url: "login.php",
									data: formData,
									success: function(html){
									if(html=='true')
									{
									$.jGrowl("Loading File Please Wait......", { sticky: true });
									$.jGrowl("Welcome to BES Learning Management System", { header: 'Access Granted' });
									var delay = 1000;
										setTimeout(function(){ window.location = 'dasboard_teacher.php'  }, delay);  
									}else if (html == 'true_student'){
										$.jGrowl("Welcome to BES Learning Management System", { header: 'Access Granted' });
									var delay = 1000;
										setTimeout(function(){ window.location = 'dashboard_student.php'  }, delay);  
									}else
									{
									$.jGrowl("Please Check your Username and Password", { header: 'Access Denied' });
									}
									}
								});
								return false;
							});
						});
						</script>
			<div id="button_form" class="form-signin" >
			New to BES LMS
			<hr>
				<h3 class="form-signin-heading"><i class="icon-edit"></i> REGISTER</h3>
				<button data-placement="bottom" title="Sign Up as Student" id="signin_student" onclick="window.location='signup_student.php'" id="btn_student" name="login" class="btn btn-info" type="submit">I`m a Student</button>
				<div class="pull-right">
					<button data-placement="bottom" title="Sign Up as Teacher" id="signin_teacher" onclick="window.location='signup_teacher.php'" name="login" class="btn btn-info" type="submit">I`m a Teacher</button>
				</div>
			</div>
														<script type="text/javascript">
														$(document).ready(function(){
															$('#signin_student').tooltip('show'); $('#signin_student').tooltip('hide');
														});
														</script>	
														<script type="text/javascript">
														$(document).ready(function(){
															$('#signin_teacher').tooltip('show'); $('#signin_teacher').tooltip('hide');
														});
														</script>	
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