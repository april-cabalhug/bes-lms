<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
    <body>
		<?php include('navbar_student.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span12" id="content">
                     <div class="row-fluid">
					    <!--
					     <ul class="breadcrumb">
								<?php
								$school_year_query = mysqli_query($conn,"select * from school_year order by school_year DESC")or die(mysqli_error());
								$school_year_query_row = mysqli_fetch_array($school_year_query);
								$school_year = $school_year_query_row['school_year'];
								?>
								<li><a href="#"><b>Change Password</b></a><span class="divider">/</span></li>
								<li><a href="#">School Year: <?php echo $school_year_query_row['school_year']; ?></a></li>
						</ul>
						  -->
					 
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-left"></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
  								<div class="alert alert-info"><i class="icon-info-sign"></i> Please Fill in required details</div>
								<?php
								$query = mysqli_query($conn,"select * from student where student_id = '$session_id'")or die(mysqli_error());
								$row = mysqli_fetch_array($query);
								?>								
										
								    <form  method="post" id="change_password" class="form-horizontal">
										<div class="pw-meter">
											<label class="control-label" for="inputEmail">Current Password</label>
											<div class="controls">
											<input type="hidden" id="password" name="password" value="<?php echo $row['password']; ?>"  placeholder="Current Password">
											<input type="password" id="current_password" name="current_password"  placeholder="Current Password">
											</div>
										</div>
										<div class="pw-meter">
											<label class="control-label" for="inputPassword">New Password</label>
											<div class="controls">
											<input type="password" id="new_password" name="new_password" placeholder="New Password">
										</div>
											<div class="pw-display-toggle-btn">
											    </div>
											    <div class="pw-strength">
											      <span>Weak</span>
											      <span></span>
											    </div>
										</div>
										<div class="pw-meter1">
											<label class="control-label" for="inputPassword">Re-type Password</label>
											<div class="controls">
											<input type="password" id="retype_password" name="retype_password" placeholder="Re-type Password">
											</div>
												<div class="pw-display-toggle-btn">
											    </div>
											    <div class="pw-strength">
											      <span>Weak</span>
											      <span></span>
											    </div>
										</div>
										<div class="control-group">
											<div class="controls">
											<button type="submit" class="btn btn-info"><i class="icon-save"></i> Save</button>
											</div>
										</div>

									</form>
										
										<script type="text/javascript">
											function getPasswordStrength(new_password){
											  let s = 0;
											  if(new_password.length > 6){
											    s++;
											  }
											  if(new_password.length > 10){
											    s++;
											  }
											  if(/[A-Z]/.test(new_password)){
											    s++;
											  }
											  if(/[0-9]/.test(new_password)){
											    s++;
											  }
											  if(/[^A-Za-z0-9]/.test(new_password)){
											    s++;
											  }
											  return s;
											}
											document.querySelector(".pw-meter #new_password").addEventListener("focus",function(){
											  document.querySelector(".pw-meter .pw-strength").style.display = "block";
											});
											document.querySelector(".pw-meter .pw-display-toggle-btn").addEventListener("click",function(){
											  let el = document.querySelector(".pw-meter .pw-display-toggle-btn");
											  if(el.classList.contains("active")){
											    document.querySelector(".pw-meter #new_password").setAttribute("type","password");
											    el.classList.remove("active");
											  } else {
											    document.querySelector(".pw-meter #new_password").setAttribute("type","text");
											    el.classList.add("active");
											  }
											});

											document.querySelector(".pw-meter #new_password").addEventListener("keyup",function(e){
											  let new_password = e.target.value;
											  let strength = getPasswordStrength(new_password);
											  let passwordStrengthSpans = document.querySelectorAll(".pw-meter .pw-strength span");
											  strength = Math.max(strength,1);
											  passwordStrengthSpans[1].style.width = strength*20 + "%";
											  if(strength < 2){
											    passwordStrengthSpans[0].innerText = "Weak";
											    passwordStrengthSpans[0].style.color = "#111";
											    passwordStrengthSpans[1].style.background = "#d13636";
											  } else if(strength >= 2 && strength <= 4){
											    passwordStrengthSpans[0].innerText = "Medium";
											    passwordStrengthSpans[0].style.color = "#111";
											    passwordStrengthSpans[1].style.background = "#e6da44";
											  } else {
											    passwordStrengthSpans[0].innerText = "Strong";
											    passwordStrengthSpans[0].style.color = "#fff";
											    passwordStrengthSpans[1].style.background = "#20a820";
											  }
											});
										</script>

										<script type="text/javascript">
											function getPasswordStrength(retype_password){
											  let s = 0;
											  if(retype_password.length > 6){
											    s++;
											  }
											  if(retype_password.length > 10){
											    s++;
											  }
											  if(/[A-Z]/.test(retype_password)){
											    s++;
											  }
											  if(/[0-9]/.test(retype_password)){
											    s++;
											  }
											  if(/[^A-Za-z0-9]/.test(retype_password)){
											    s++;
											  }
											  return s;
											}
											document.querySelector(".pw-meter1 #retype_password").addEventListener("focus",function(){
											  document.querySelector(".pw-meter1 .pw-strength").style.display = "block";
											});
											document.querySelector(".pw-meter1 .pw-display-toggle-btn").addEventListener("click",function(){
											  let el = document.querySelector(".pw-meter1 .pw-display-toggle-btn");
											  if(el.classList.contains("active")){
											    document.querySelector(".pw-meter1 #retype_password").setAttribute("type","password");
											    el.classList.remove("active");
											  } else {
											    document.querySelector(".pw-meter1 #retype_password").setAttribute("type","text");
											    el.classList.add("active");
											  }
											});

											document.querySelector(".pw-meter1 #retype_password").addEventListener("keyup",function(e){
											  let retype_password = e.target.value;
											  let strength = getPasswordStrength(retype_password);
											  let passwordStrengthSpans = document.querySelectorAll(".pw-meter1 .pw-strength span");
											  strength = Math.max(strength,1);
											  passwordStrengthSpans[1].style.width = strength*20 + "%";
											  if(strength < 2){
											    passwordStrengthSpans[0].innerText = "Weak";
											    passwordStrengthSpans[0].style.color = "#111";
											    passwordStrengthSpans[1].style.background = "#d13636";
											  } else if(strength >= 2 && strength <= 4){
											    passwordStrengthSpans[0].innerText = "Medium";
											    passwordStrengthSpans[0].style.color = "#111";
											    passwordStrengthSpans[1].style.background = "#e6da44";
											  } else {
											    passwordStrengthSpans[0].innerText = "Strong";
											    passwordStrengthSpans[0].style.color = "#fff";
											    passwordStrengthSpans[1].style.background = "#20a820";
											  }
											});
										</script>

												<script>
			jQuery(document).ready(function(){
			jQuery("#change_password").submit(function(e){
					e.preventDefault();
						
						var password = jQuery('#password').val();
						var current_password = jQuery('#current_password').val();
						var new_password = jQuery('#new_password').val();
						var retype_password = jQuery('#retype_password').val();
						if (password != current_password)
						{
						$.jGrowl("Password does not match with your current password  ", { header: 'Change Password Failed' });
						}else if  (new_password != retype_password){
						$.jGrowl("Password does not match with your new password  ", { header: 'Change Password Failed' });
						}else if ((password == current_password) && (new_password == retype_password)){
					var formData = jQuery(this).serialize();
					$.ajax({
						type: "POST",
						url: "update_password_student.php",
						data: formData,
						success: function(html){
					
						$.jGrowl("Your password is successfully change", { header: 'Change Password Success' });
						var delay = 2000;
							setTimeout(function(){ window.location = 'dashboard_student.php'  }, delay);  
						
						}
						
						
					});
			
					}
				});
			});
			</script>
										
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
					
                </div>
	
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>
</html>