<?php include('header_dashboard.php'); ?>


    <body id="class_div" style="background-image: url('admin/images/index.jpg');background-repeat: no-repeat;background-attachment: fixed; background-size: cover;">
     
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span3"></div>
                <div class="span7" id="content">
                     <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
								<div class="navbar navbar-inner block-header">
								</div>
                            <div class="block-content collapse in">
                                <div class="span12">

										<?php
											$mission_query = mysqli_query($conn,"select * from content where title  = 'Programs' ")or die(mysqli_error());
											$mission_row = mysqli_fetch_array($mission_query);
											echo $mission_row['content'];
										?>
								<hr>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
                </div>
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
                        		<li><a href="index.php"></i>&nbsp;Home</a></li>
                        			<li class="divider-vertical"></li>
                        		<li><a href="about.php"></i>&nbsp;About</a></li>
                        			<li class="divider-vertical"></li>
                        		<li><a href="calendar_of_events.php"></i>&nbsp;Calendar</a></li>
                        			<li class="divider-vertical"></li>
                        		<li><a href="directories.php"></i>&nbsp;Directories</a></li>
                        			<li class="divider-vertical"></li>
                        		<li class="active"><a href="programs.php"></i>&nbsp;Programs</a></li>
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
<?php include('script.php'); ?>
    </body>
</html>