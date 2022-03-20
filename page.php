<?php 
	include 'inc/header.php'; 
?>

  	<?php
       /* 
          if (!isset($_GET['pageid']) || $_GET['pageid'] == NULL) {
                echo "<script>window.location = '404.php';</script>";
            } else {
                $id = $_GET["pageid"];
            }
	               */
   
        $pageid    = mysqli_real_escape_string($db->link, $_GET['pageid']);
          if (!isset($pageid) || $pageid == NULL) {
                echo "<script>window.location = '404.php';</script>";
            } else {
                $id = $pageid;
            }
   ?>

	 <?php
            $pageQuery = "SELECT * FROM tbl_page WHERE id='$id'";
            $pageDetails = $db->select($pageQuery);
            if ($pageDetails) {
            while ($result = $pageDetails->fetch_assoc()) {        
        ?> 
	<div class="contentsection contemplete clear">
		<div class="maincontent clear">
			<div class="about">
				<h2><?php echo $result['name'];?></h2>
				<?php echo $result['body'];?>
			</div>
		</div>
<?php } }  else { header("Location:404.php"); } ?>

<?php include 'inc/sidebar.php'; ?>
<?php include 'inc/footer.php'; ?>