<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Update Post</h2>
        <?php
            if (!isset($_GET['editpostid']) || $_GET['editpostid'] == NULL) {
                header("Location:postlist.php");
            } else {
                $editid = $_GET['editpostid'];
            }

        ?>
            <?php
            if ($_SERVER['REQUEST_METHOD'] == "POST") {
            $title    = mysqli_real_escape_string($db->link, $_POST['title']);
            $cat      = mysqli_real_escape_string($db->link, $_POST['cat']);
            $body     = mysqli_real_escape_string($db->link, $_POST['body']);
            $tags     = mysqli_real_escape_string($db->link, $_POST['tags']);   
            $description = mysqli_real_escape_string($db->link, $_POST['description']);   
            $author   = mysqli_real_escape_string($db->link, $_POST['author']); 
            $userid = mysqli_real_escape_string($db->link, $_POST['userid']);   

                $permited = array('jpg','jpeg','png','gif');
                $file_name = $_FILES['image']['name'];
                $file_size = $_FILES['image']['size'];
                $file_tmp_name = $_FILES['image']['tmp_name'];


                $div = explode('.', $file_name);
                $file_ext = strtolower(end($div));
                $unique_image = substr(md5(time()), 0,10).'.'.$file_ext;
                $uploaded_image = "upload/".$unique_image;

                if ($title == "" || $cat == "" || $body == "" || $tags == "" || $author == "") {
                   echo "<span style = 'color:red; font-size:18px;'>Field must not be Empty !!!!</span>";
                } else {

                if (!empty($file_name)) {
                if ($file_size > 1048567) {
                    echo "<span style = 'color:red; font-size:18px;'>Image size should be less than 1 MB</span>";
                } elseif (in_array($file_ext, $permited) === false) {
                    echo "<span style = 'color:red; font-size:18px;'>You can upload only:-".implode(', ', $permited)."</span>";
                } else {
                 move_uploaded_file($file_tmp_name, $uploaded_image);
                 $query = "UPDATE tbl_post
                    SET 
                    cat    = '$cat',
                    title  = '$title',
                    body   = '$body',
                    image  = '$uploaded_image',
                    author = '$author',
                    tags   = '$tags',
                    description = '$description',
                    userid = '$userid'
                    WHERE id = '$editid'";

                 $updated_row = $db->update($query);
                 if ($updated_row) {
                    echo "<span style = 'color:green; font-size:18px;'>Data Updated successfully.</span>";
                 } else {
                    echo "<span style = 'color:red; font-size:18px;'>Data not Updated successfully.</span>";
                 }
             }

         } else {
            $query = "UPDATE tbl_post
                    SET 
                    cat    = '$cat',
                    title  = '$title',
                    body   = '$body',
                    author = '$author',
                    tags   = '$tags',
                    description = '$description',
                    userid = '$userid'
                    WHERE id = '$editid'";

                 $updated_row = $db->update($query);
                 if ($updated_row) {
                    echo "<span style = 'color:green; font-size:18px;'>Data Updated successfully.</span>";
                 } else {
                    echo "<span style = 'color:red; font-size:18px;'>Data not Updated successfully.</span>";
                 }
              }   
            }
           
        }
?>
        <div class="block"> 
        <?php
            $query = "select * from tbl_post where id='$editid' order by id desc";
            $postEdit = $db->select($query);
            if ($postEdit) {
            while ($editData = $postEdit->fetch_assoc()) {

        ?>              
     <form action="" method="post" enctype="multipart/form-data">
        <table class="form">
       
        <tr>
            <td>
                <label>Title</label>
            </td>
            <td>
                <input type="text" name="title" value="<?php echo $editData['title'];?>" class="medium" />
            </td>
        </tr>
         
            <tr>
                <td>
                    <label>Category</label>
                </td>
                <td>
                    <select id="select" name="cat">
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
                    <label>Upload Image</label>
                </td>
                <td>
                    <img src="<?php echo $editData['image'];?>" height = "80px" width ="150px"><br>
                    <input type="file" name="image" />
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
                <input type="text" name="tags" value="<?php echo $editData['tags'];?>" class="medium" />
                </td>
            </tr>

            <tr>
                <td>
                    <label>Description</label>
                </td>
                <td>
                <input type="text" name="description" value="<?php echo $editData['description'];?>" class="medium" />
                </td>
            </tr>

            <tr>
                <td>
                    <label>Author</label>
                </td>
                <td>
                    <input type="text" name="author" value="<?php echo $editData['author'];?>" class="medium" />
                    <input type="hidden" name="userid" value="<?php echo Session::get('userId');?>" class="medium"/>
                </td>
            </tr>
			<tr>
                <td></td>
                <td>
                    <input type="submit" name="submit" Value="Update" />
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
