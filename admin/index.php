<?php include('header.php'); ?>
  <body id="login">
    <div class="container">

      <form id="login_form" class="form-signin" method="post">
        <center><h3 class="form-signin-heading"><i class="icon-lock"></i> LOGIN</h3></center>
        <input type="text" class="input-block-level" id="usernmae" name="username" placeholder="Username" required>
        <input type="password" class="input-block-level" id="password" name="password" placeholder="Password" required>
				<p style="margin: 0; padding: 0; color: #666; font-size: 16px; line-height: 25px; opacity: .6;">
							<a href="forgot_password.php" style="margin-bottom: 40px; display: block; float: right; text-decoration: none; font-weight: bold;">
						Forgot Password?</a></p>
				<button name="login" class="btn btn-info" type="submit"></i> Sign in</button>
		      </form>
				<script>
			jQuery(document).ready(function(){
			jQuery("#login_form").submit(function(e){
					e.preventDefault();
					var formData = jQuery(this).serialize();
					$.ajax({
						type: "POST",
						url: "login.php",
						data: formData,
						success: function(html){
						if(html=='true')
						{
						$.jGrowl("Welcome to BES LMS: Admin Portal", { header: 'Access Granted' });
						var delay = 2000;
							setTimeout(function(){ window.location = 'dashboard.php'  }, delay);  
						}
						else
						{
						$.jGrowl("Please Check your Username and Password", { header: 'Login Failed' });
						}
						}
						
					});
					return false;
				});
			});
			</script>

		


    </div> <!-- /container -->
<?php include('script.php'); ?>
  </body>
</html>