<?php
	if (isset($_GET['pageid'])) {
		$pagetitleId = $_GET['pageid'];
        $query = "SELECT * FROM tbl_page WHERE id='$pagetitleId'";
        $pages = $db->select($query);
        if ($pages) {
        while ($result = $pages->fetch_assoc()) { ?>
        <title><?php echo $result['name']; ?> - <?php echo TITLE; ?></title>

    <?php } } } elseif (isset($_GET['id'])) {
		$postId = $_GET['id'];
        $query = "SELECT * FROM tbl_post WHERE id='$postId'";
        $posts = $db->select($query);
        if ($posts) {
        while ($result = $posts->fetch_assoc()) { ?>
        <title><?php echo $result['title']; ?> - <?php echo TITLE; ?></title>
        <?php } } } else { ?>
        <title><?php echo $fm->title(); ?> - <?php echo TITLE; ?></title>
 <?php	} ?>

	<meta name="language" content="English">
	<?php
		if (isset($_GET['id'])) {
			$descriptionId = $_GET['id'];
			$query = "SELECT * FROM tbl_post WHERE id='$descriptionId'";
			$description = $db->select($query);
			if ($description) {
				while ($result = $description->fetch_assoc()) { ?>
				<meta name="description" content="<?php echo $result['description'];?>">	
			<?php } } } else { ?>
			<meta name="description" content="<?php echo DESCRIPTION;?>">
			<?php } ?>
	
	<?php
		if (isset($_GET['id'])) {
			$keywordsId = $_GET['id'];
			$query = "SELECT * FROM tbl_post WHERE id='$keywordsId'";
			$keywords = $db->select($query);
			if ($keywords) {
				while ($result = $keywords->fetch_assoc()) { ?>
				<meta name="keywords" content="<?php echo $result['tags'];?>">	
			<?php } } } else { ?>
			<meta name="keywords" content="<?php echo KEYWORDS;?>">
			<?php } ?>
	   <meta name="author" content="Parbhez">