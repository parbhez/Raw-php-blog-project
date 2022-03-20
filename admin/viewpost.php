<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>View Post</h2>
        <?php
            if (!isset($_GET['viewpostid']) || $_GET['viewpostid'] == NULL) {
                //header("Location:postlist.php");
                echo "<script>window.location = 'index.php';</script>";
            } else {
                $editid = $_GET['viewpostid'];
            }
        ?>
        <div class="block"> 
        <?php
            $query = "select * from tbl_post where id='$editid' order by id desc";
            $postEdit = $db->select($query);
            if ($postEdit) {
            while ($editData = $postEdit->fetch_assoc()) {
        ?>              
     <form action="" method="post">
        <table class="form">
       
        <tr>
            <td>
                <label>Title</label>
            </td>
            <td>
                <input type="text" readonly value="<?php echo $editData['title'];?>" class="medium" />
            </td>
        </tr>
         
            <tr>
                <td>
                    <label>Category</label>
                </td>
                <td>
                    <select id="select">
                        <option>Select Category</option>
                        <?php
                            $query = "select * from tbl_category";
                            $category = $db->select($query);
                            if ($category) {
                            while ($result = $category->fetch_assoc()) {
                          ?>
                        <option 
                        <?php
                        if ($editData['cat'] == $result['id']) {
                           echo "selected"; } ?> value="<?php echo $result['id']; ?>"><?php echo $result['name']; ?>
                        </option>
                        
                        <?php } }?>
                    </select>
                </td>
            </tr>
       
            <tr>
                <td>
                    <label>Image</label>
                </td>
                <td>
                    <img src="<?php echo $editData['image'];?>" height = "80px" width ="150px"><br>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top; padding-top: 9px;">
                    <label>Content</label>
                </td>
                <td>
                    <textarea class="tinymce" name="body">
                        <?php echo $editData['body'];?>
                    </textarea>
                </td>
            </tr>

             <tr>
                <td>
                    <label>Tags</label>
                </td>
                <td>
                <input type="text" readonly value="<?php echo $editData['tags'];?>" class="medium" />
                </td>
            </tr>

            <tr>
                <td>
                    <label>Description</label>
                </td>
                <td>
                <input type="text" readonly value="<?php echo $editData['description'];?>" class="medium" />
                </td>
            </tr>

            <tr>
                <td>
                    <label>Author</label>
                </td>
                <td>
                    <input type="text" readonly value="<?php echo $editData['author'];?>" class="medium" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" name="submit" Value="OK" />
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
