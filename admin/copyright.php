<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<div class="grid_10">
<div class="box round first grid">
    <h2>Update Copyright Text</h2>
    <?php 
        if ($_SERVER['REQUEST_METHOD'] == "POST") {
            $copyright = $fm->validation($_POST['copyright']);

            $copyright = mysqli_real_escape_string($db->link, $copyright);
            if ($copyright == "") {
                echo "<span style = 'font-size:18px; color:red;'>Field must not be Empty !!</span>";
            } else {
                $query = "UPDATE tbl_footer
                SET 
                copyright = ' $copyright'
                WHERE id = '1'";
                $UpdateFooter = $db->update($query);
                if ($UpdateFooter) {
                   echo "<span style = 'font-size:18px; color:green'>Footer Updated Successfully.</span>";
                } else {
                    echo "<span style = 'font-size:18px; color:red'>Footer not Updated.</span>";
                }
            }
        }

    ?>
    <div class="block copyblock"> 
    <?php
    $query = "SELECT * FROM tbl_footer WHERE id = '1'";
    $footer = $db->select($query);
    if ($footer) {
    while ($result = $footer->fetch_assoc()) {
    ?>
     <form action="" method="post">
        <table class="form">					
            <tr>
                <td>
                    <input type="text" value="<?php echo $result['copyright'];?>" name="copyright" class="large" />
                </td>
            </tr>
			
			 <tr> 
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
<?php include 'inc/footer.php';?>
