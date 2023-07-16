<?php include('header.php'); ?>
<?php include('session.php'); ?>
    <body>
		<?php include('navbar.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('content_sidebar.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Content</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
  									<table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
									<thead>
										        <tr>

											     
												 <th>Title</th>
												 <th></th>
                                   
												</tr>
												
										</thead>
										<tbody>
											
             		<?php
					$content_query = mysqli_query($conn,"select * from content")or die(mysqli_error());
					while($row = mysqli_fetch_array($content_query)){
					$id = $row['content_id'];
					?>
                              
										<tr>
										 
                                         <td><?php echo $row['title']; ?></td>
                                         <td width="30"><a href="edit_content.php<?php echo '?id='.$id; ?>" class="btn btn-success"><i class="icon-pencil icon-large"></i></a></td>
                                     
                               
                                </tr>
                         <?php } ?>
						   
										</tbody>
									</table>
								<!--	</form> -->
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