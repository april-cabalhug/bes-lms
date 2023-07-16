<div class="span3" id="sidebar">
	<img id="avatar" class="img-circle" src="admin/<?php echo $row['location']; ?>">
	<?php include('teacher_count.php'); ?>
	<ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
		<li class=""><a href="dasboard_teacher.php"><i class="icon-chevron-right"></i><i class="icon-group"></i>&nbsp;My Class</a></li>
		<li class="dropdown">
		    <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-chevron-right"></i><i class="icon-plus-sign"></i>&nbsp;Add</a>
		    <ul class="dropdown-menu">
		        <li><a href="add_downloadable.php">&nbsp;Lecture</a></li>
		        <li><a href="add_announcement.php">&nbsp;Announcement</a></li>
		        <li><a href="add_assignment.php">&nbsp;Assignment</a></li>
		    </ul>
		</li>
		<li class=""><a href="teacher_quiz.php"><i class="icon-chevron-right"></i><i class="icon-list"></i>&nbsp;Quiz</a></li>
		<li class=""><a href="teacher_share.php"><i class="icon-chevron-right"></i><i class="icon-file"></i>&nbsp;Shared Files</a></li>
	</ul>
	<?php include('search_other_class.php'); ?>	
</div>

