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
									<form id="signin_teacher" class="form-signin" method="post">
					<center><h3 class="form-signin-heading"><i class="icon-lock"></i> REGISTER YOUR ACCOUNT</h3></center>
					<input type="text" class="input-block-level" id="username" name="username" placeholder="Username" required>
					<input type="text" class="input-block-level" id="email" name="email" placeholder="Email Address" required>
					<input type="text" class="input-block-level" id="code" name="code" placeholder="Verification Code" required>
					<button id="signin" name="login" class="btn btn-info" type="submit"> Register</button>
			</form>
			<script>
			jQuery(document).ready(function(){
			jQuery("#signin_teacher").submit(function(e){
					e.preventDefault();
				/*	var password = jQuery('#password').val();
						var cpassword = jQuery('#cpassword').val();
					if (password == cpassword){ */
					var formData = jQuery(this).serialize();
					$.ajax({
						type: "POST",
						url: "teacher_signup.php",
						data: formData,
						success: function(html){
						if(html=='true')
						{
						$.jGrowl("Welcome to BES Learning Management System", { header: 'Sign up Success' });
						$.jGrowl("Please change your temporary password immediately!");
						var delay = 2000;
							setTimeout(function(){ window.location = 'dasboard_teacher.php'  }, delay);  
						}else{
							$.jGrowl("Your data is not found in the database", { header: 'Registration Failed' });
							$.jGrowl("Make sure that you already have an account created by the admin to register");
							var delay = 2000;
							setTimeout(function(){ window.location = 'signup_teacher.php'  }, delay);
						}
						}
					});
			
				/*	}else
						{
						$.jGrowl("Your data is not found in the database", { header: 'Sign Up Failed' });
						} */
				});
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