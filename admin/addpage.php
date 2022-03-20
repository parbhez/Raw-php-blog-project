<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Create New Page</h2>
    <?php
            if ($_SERVER['REQUEST_METHOD'] == "POST") {
            //$name = $fm->validation($_POST['name']);
            //$body = $fm->validation($_POST['body']);
            $name = $_POST['name'];
            $body = $_POST['body'];

            $name    = mysqli_real_escape_string($db->link, $name);
            $body    = mysqli_real_escape_string($db->link, $body);    

            if ($name == "" || $body == "") {
               echo "<span style = 'color:red; font-size:18px;'>Field must not be Empty !!!!</span>";
            }else {
            $query = "INSERT INTO tbl_page(name, body) values('$name', '$body')";
             $inserted_pages = $db->insert($query);
             if ($inserted_pages) {
                echo "<span style = 'color:green; font-size:18px;'>Page Created successfully.</span>";
             } else {
                echo "<span style = 'color:red; font-size:18px;'>Page Not Created.</span>";
                }
            }
        }
    ?>
                <div class="block">               
                 <form action="addpage.php" method="post">
                    <table class="form">
                       
                        <tr>
                            <td>
                                <label>Name</label>
                            </td>
                            <td>
                                <input type="text" name="name" placeholder="Enter Post name..." class="medium" />
                            </td>
                        </tr>
                   
                     
                        <tr>
                            <td style="vertical-align: top; padding-top: 9px;">
                                <label>Content</label>
                            </td>
                            <td>
                                <textarea class="tinymce" name="body"></textarea>
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
