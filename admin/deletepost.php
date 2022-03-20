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
	if (!isset($_GET['deletepostid']) || $_GET['deletepostid'] == NULL) {
		header("Location:postlist.php");
	} else {
			$deleteId = $_GET['deletepostid'];

			$query = "SELECT * FROM tbl_post WHERE id = '$deleteId'";
			$getData = $db->select($query);

			if ($getData) {
				while ($delImg = $getData->fetch_assoc()) {
					$delLink = $delImg['image'];
					unlink($delLink);
				}
			}

			$delQuery = "DELETE FROM tbl_post WHERE id = '$deleteId'";
			$delData = $db->delete($delQuery);

			if ($delData) {
				echo "<script>alert('Data Deleted Successfully.');</script>";
				echo "<script>window.location = 'postlist.php';</script>";

			} else {
				echo "<script>alert('Data Not Deleted.Please try again.');</script>";
				echo "<script>window.location = 'postlist.php';</script>";
			}
	}


?>
