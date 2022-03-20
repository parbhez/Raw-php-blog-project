<?php
    include '../lib/Session.php';
    Session::checkSession();
?>
<?php
    include '../config/config.php';
    include '../lib/Database.php';
?>
 <?php
    $db = new Database();
?>

<?php
	if (!isset($_GET['deletepage']) || $_GET['deletepage'] == NULL) {
		header("Location:index..php");
	} else {
			$pageId = $_GET['deletepage'];

			$delQuery = "DELETE FROM tbl_page WHERE id = '$pageId'";
			$delData = $db->delete($delQuery);

			if ($delData) {
				echo "<script>alert('Page Deleted Successfully.');</script>";
				echo "<script>window.location = 'index.php';</script>";

			} else {
				echo "<script>alert('Page Not Deleted.Please try again.');</script>";
				echo "<script>window.location = 'index.php';</script>";
			}
	}


?>
