<?php 
	include '../lib/Session.php';
	Session::checkLogin();
?>

<?php
	include '../config/config.php';
	include '../lib/Database.php';
	include '../helpers/Format.php';
?>
<?php
	$db = new Database();
	$fm = new Format();
?>

<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>Password Recovery</title>
    <link rel="stylesheet" type="text/css" href="css/stylelogin.css" media="screen" />
</head>
<body>
<div class="container">
	<section id="content">

	<?php 
	
		if ($_SERVER['REQUEST_METHOD'] == "POST") {
		$email = $fm->validation($_POST['email']);
		$email = mysqli_real_escape_string($db->link, $email);
		if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
	    echo "<span style = 'color:red;font-size:18px;'>Invalid email Address !!!</span>";
     } else {
     	$mailquery = "select * from tbl_user where email='$email' limit 1";
       $mailCheck = $db->select($mailquery);
		if ($mailCheck!= false) {
			while ($value = $mailCheck->fetch_assoc()) {
				$userid = $value['id'];
				$username = $value['username'];
			}
			$text = substr($email, 0, 3);
			$rand = rand(10000, 99999);
			$newpass = "$text$rand";
			$password = md5($newpass);
			$updatequery = "UPDATE tbl_user
				            SET
				            password = '$password'
				            WHERE id = '$userid'";
		$update_row = $db->update($updatequery);
		$to      = '$email';
		$from    = 'masud.affb@gmail.com';
		$headers = "From: $from\n";
		$headers = 'MIME-Version: 1.0' . "\r\n";
		$headers = 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
		$subject = "Your Password";
		$message = "Your Username is:".$username." and Password is: ".$newpass." please visit website to login";

		$sendMail = mail($to, $subject, $message, $headers);
		if ($sendMail) {
			echo "<span style = 'color:green;font-size:18px;'>Please check your Email for new password !!!</span>";    
		} else {
			echo "<span style = 'color:red;font-size:18px;'>Email not send!!!</span>";
		}

	      } else { 
			echo "<span style = 'color:red;font-size:18px;'>Email not Exist !!!</span>";
		  }
     }
 }
			/*
			if ($_SERVER['REQUEST_METHOD'] == "POST") {
				$username =$fm->validation($_POST['username']);
				$password =$fm->validation(md5($_POST['password']));

				$username = mysqli_real_escape_string($db->link, $username);
				$password = mysqli_real_escape_string($db->link, $password);

				$query = "SELECT * FROM  tbl_user WHERE username = '$username' AND password = '$password'";
				$result = $db->select($query);

				if ($result != false) {
					$value = mysqli_fetch_array($result);
					$row = mysqli_num_rows($result);

					if ($row > 0) {
						session::set("login", true);
						session::set("username", $value['username']);
						session::set("userId", $value['id']);
						header("Location:index.php");
					} else {
						echo "<span style = 'color:red;font-size:18px;'>No result found !!!</span>";
					}
				} else { 
					echo "<span style = 'color:red;font-size:18px;'>Username or Password doesn't match !!!</span>";
				}
			}
				*/
			?>


		<form action="" method="post">
			<h1>Password Recovery</h1>
			<div>
				<input type="text" placeholder="Enter Valid Email"  name="email"/>
			</div>
			
			<div>
				<input type="submit" value="Send Mail" />
			</div>
		</form><!-- form -->
		<div class="button">
			<a href="login.php">Log in</a>
		</div><!-- button -->
		<div class="button">
			<a href="#">Masud Parbhez</a>
		</div><!-- button -->
	</section><!-- content -->
</div><!-- container -->
</body>
</html>