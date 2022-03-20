<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<style>
    .deletepage{margin-left: 10px;}
    .deletepage a {
    border: 1px solid #ddd;
    color: #444;
    cursor: pointer;
    font-size: 20px;
    padding: 1px 10px;
    font-weight: normal;
    background: #DDDDDD;
}
    

</style>
        <div class="grid_10">
            <div class="box round first grid">
            <h2>Update Page</h2>
            <?php
            if (!isset($_GET['pageid']) || $_GET['pageid'] == NULL) {
                echo "<script>window.location = 'index.php';</script>";
            } else {
                $id = $_GET["pageid"];
            }
        ?>
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
                $query = "UPDATE tbl_page
                SET 
                name = '$name',
                body = '$body'
                WHERE id = '$id';
                ";
                 $update_pages = $db->update($query);
                 if ($update_pages) {
                    echo "<span style = 'color:green; font-size:18px;'>Page Updated successfully.</span>";
                 } else {
                    echo "<span style = 'color:red; font-size:18px;'>Page Not Updated.</span>";
                 }
             }
           
         }
?>
                <div class="block">
        <?php
                $pageQuery       = "SELECT * FROM tbl_page WHERE id = '$id'";
                $pageDetails     = $db->select($pageQuery);
                if($pageDetails){
                 while ($result  = $pageDetails->fetch_assoc()) {        
        ?>               
                 <form action="" method="post">
                    <table class="form">
                        <tr>
                            <td>
                                <label>Name</label>
                            </td>
                            <td>
                                <input type="text" name="name" value="<?php echo $result['name'];?>" class="medium" />
                            </td>
                        </tr>
                   
                        <tr>
                            <td style="vertical-align: top; padding-top: 9px;">
                                <label>Content</label>
                            </td>
                            <td>
                                <textarea class="tinymce" name="body">
                                    <?php echo $result['body'];?>
                                </textarea>
                            </td>
                        </tr>

						<tr>
                            <td></td>
                            <td>
                                <input type="submit" name="submit" Value="Update" />
                                <span class = "deletepage"><a onclick="return confirm('Are you sure want to delete now the Page????')" href="deletepage.php?deletepage=<?php echo $result['id'];?>">Delete</a></span>
                            </td>
                        </tr>
                    </table>
                    </form>
                    <?php } } ?>
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
