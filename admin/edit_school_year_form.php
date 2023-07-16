   <div class="row-fluid">
       <a href="school_year.php" class="btn btn-info"><i class="icon-plus-sign icon-large"></i> Add School Year</a>
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Edit School Year</div>
                            </div>
							<?php
							$query = mysqli_query($conn,"select * from school_year where school_year_id = '$get_id'")or die(mysqli_error());
							$row = mysqli_fetch_array($query);
							?>
                            <div class="block-content collapse in">
                                <div class="span12">
								<form method="post">
										<div class="control-group">
                                          <div class="controls">
                                            <input name="school_year" value="<?php echo $row['school_year']; ?>" class="input focused" id="focusedInput" type="text" placeholder = "School Year" required>
                                          </div>
                                        </div>
									
											<div class="control-group">
                                          <div class="controls">
												<button name="update" class="btn btn-success"><i class="icon-save icon-large"></i></button>

                                          </div>
                                        </div>
                                </form>
								</div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div><?php
if (isset($_POST['update'])){
$school_year = $_POST['school_year'];

mysqli_query($conn,"update school_year set school_year = '$school_year' where school_year_id = '$get_id' ")or die(mysqli_error());
?>

<script>
window.location = "school_year.php";
</script>
<?php

}
?>