<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>

<?php
    if (!isset($_GET['msgid']) || $_GET['msgid'] == NULL) {
        echo "<script>window.location = 'inbox.php';</script>";
    } else {
            $msgId = $_GET['msgid'];
        }
?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Reply Message</h2>
    <?php
            if ($_SERVER['REQUEST_METHOD'] == "POST") {
            $to      = $fm->validation($_POST['toemail']); 
            $from    = $fm->validation($_POST['fromemail']); 
            $subject = $fm->validation($_POST['subject']); 
            $message = $fm->validation($_POST['message']);

            $sendemail =  mail($to, $subject, $message, $from);
            if ($sendemail) {
                echo "<span style = 'color:green; font-size:18px;'>Message Send Successfully.</span>";
            } else{
                echo "<span style = 'color:red; font-size:18px;'>Something went Wrong !!</span>";
            }
        }
    ?>
                <div class="block">               
                 <form action="" method="post">
         <?php
            $query = "SELECT * FROM tbl_contact WHERE id = '$msgId'";
            $mag = $db->select($query);
            if ($mag) {
            while ($result = $mag->fetch_assoc()) {
        ?>
                    <table class="form">
                    <tr>
                        <td>
                            <label>To</label>
                            </td>
                            <td>
                               <input type="text" readonly name="toemail" value="<?php echo $result['email'];?>" class="medium" /> 
                        </td>
                        </tr>
                        <tr>
                            <td>
                                <label>From</label>
                            </td>
                            <td>
                                <input type="text" name="fromemail" placeholder = "Please enter your email address" class="medium" />
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <label>Subject</label>
                            </td>
                            <td>
                                <input type="text" name="subject" placeholder = "Please enter your subject" class="medium" />
                            </td>
                        </tr>
                    
                        <tr>
                            <td>
                                <label>Message</label>
                            </td>
                            <td>
                                <textarea class="tinymce" name="message">
                                    
                                </textarea>
                            </td>
                        </tr>

						<tr>
                            <td></td>
                            <td>
                                <input type="submit" name="submit" Value="Send" />
                            </td>
                        </tr>
                    </table>
                    <?php } } ?>
                    </form>
                </div>
            </div>
        </div>
<!-- Load TinyMCE -->
    <script src="js/tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
        setupTinyMCE();
        setDatePicker('date-picker');
        $('input[type="checkbox"]').fancybutton();
        $('input[type="radio"]').fancybutton();
        });
    </script>
<!-- Load TinyMCE -->
<?php include 'inc/footer.php';?>
