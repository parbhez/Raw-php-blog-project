<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php
        if (!Session::get('userRole') == '0') { 
         echo "<script>window.location = 'index.php';</script>";
     }
?>
<div class="grid_10">	
<div class="box round first grid">
<h2>Add New User</h2>
<div class="block copyblock"> 

<?php
    if ($_SERVER['REQUEST_METHOD'] == "POST") {
        $username = $fm->validation($_POST['username']);
        $password = $fm->validation(md5($_POST['password']));
        $email    = $fm->validation($_POST['email']);
        $role     = $fm->validation($_POST['role']);

        $username = mysqli_real_escape_string($db->link, $username);
        $password = mysqli_real_escape_string($db->link, $password);
        $email    = mysqli_real_escape_string($db->link, $email);
        $role     = mysqli_real_escape_string($db->link, $role);

        if ($username == "" || $password == "" || $role == "" || $email == "") {
            echo "<span style = 'color:red;font-size:18px;'>Field must not be Empty !!!</span>";
        } else {
        $mailquery = "select * from tbl_user where email='$email' limit 1";
        $mailCheck = $db->select($mailquery);
        if ($mailCheck != false) {
           echo "<span style = 'color:red;font-size:18px;'>Email Already Exist !!!</span>";
        } else {
            $query = "INSERT INTO tbl_user(username, password, email, role) VALUES('$username', '$password', '$email', '$role')";
           $addUser = $db->insert($query);
           if ($addUser) {
               echo "<span style = 'color:green;font-size:18px;'>User Created Successfully !!!</span>";
           } else {
                echo "<span style = 'color:red;font-size:18px;'>User Not  Created !!!</span>";
           }
        }
    }
}
?>

 <form action="" method="post">
    <table class="form">					
        <tr>
            <td>
                <label>Username</label>
            </td>
            <td>
                <input type="text" name = "username" placeholder="Enter Your Username..." class="medium" />
            </td>
        </tr>

        <tr>
            <td>
                <label>Password</label>
            </td>
            <td>
                <input type="text" name = "password" placeholder="Enter Your Password..." class="medium" />
            </td>
        </tr>

        <tr>
            <td>
                <label>E-mail</label>
            </td>
            <td>
                <input type="text" name = "email" placeholder="Enter Your Valid Email..." class="medium" />
            </td>
        </tr>

        <tr>
            <td>
                <label>User Role</label>
            </td>
            <td>
                <select id="select"  name="role">
                    <option>Select User Role</option>
                    <option value="0">Admin</option>
                    <option value="1">Author</option>
                    <option value="2">Editor</option> 
                </select>
            </td>
        </tr>

		<tr> 
            <td></td>
            <td>
                <input type="submit" name="submit" Value="Create" />
            </td>
        </tr>
    </table>
    </form>
</div>
</div>
</div>
<?php include 'inc/footer.php';?>
