<?php
require_once ('config.php');
$msg = '';

if (isset($_GET['id']))
{
    $id = $_GET['id'];
    $req = '';
}
else
{
    $id = '';
    $req = 'required';
}

$query = mysqli_query($conn, "SELECT product.*,categories.cat_title FROM Product,categories WHERE Product.id = '$id' ORDER BY product.id desc");
$check = mysqli_num_rows($query);
if ($check > 0)
{
    $value = mysqli_fetch_array($query);
    $id = $_GET['id'];
    $title = $value['title'];
    $cat = $value['cat_id'];
    $qty = $value['qty'];
    $price = $value['price'];
    $brand = $value['brand'];
    $desc = $value['descr'];
    $img = $value['image'];
}
else
{
    header('location:items.php');
    die();
}

if (isset($_POST['submit']))
{

    if (isset($_FILES['npic']))
    {
        $image = rand(11111111, 999999999) . '-' . $_FILES['npic']['name'];
        move_uploaded_file($_FILES['npic']['tmp_name'], PRODUCT_IMAGE_SERVER_PATH . $image);
    }
    $title = $_POST['ntitle'];
    $cat = $_POST['cat'];
    $qty = $_POST['nqty'];
    $price = $_POST['nprice'];
    $brand = $_POST['nbrand'];
    $desc = $_POST['desc'];

    if (empty($_FILES['npic']['name']))
    {
        $udc = mysqli_query($conn, "UPDATE product SET `title` = '$title', `cat_id` = '$cat', `qty` = '$qty', `price` = '$price', `brand` = '$brand', `descr` = '$desc' WHERE `id` = '$id'");
        if ($udc)
        {
            $msg = 'Record Updated';
            header('location:?items');
        }
    }
    else if ($_FILES['npic']['name'] != '')
    {
        $udc = mysqli_query($conn, "UPDATE product SET `title` = '$title', `cat_id` = '$cat', `qty` = '$qty', `price` = '$price', `brand` = '$brand', `image` = '$image', `descr` = '$desc' WHERE id = '$id'");
        if ($udc)
        {
            $msg = 'Record Updated';
            header('location:?items');
        }
        else
        {
            $msg = 'error';
        }
    }
    else
    {
        $msg = 'Please a correct file format of an image';
    }
}
?>

<div style="clear: both;"></div>
<h3 class="title2">&nbsp;Item Details</h3>
<div class="table-responsive">
	<table class="table table-bordered">
	<tr><th width="5%">Product Name</th>
		<th width="5%">Category</th>
		<th width="5%">Quantity</th>
		<th width="5%">Product Brand</th>
		<th width="5%">Price Details</th>
		<th width="5%">Product Image</th>
		<th width="5%">Product Description</th>
		<th width="5%">Update Item</th>
	</tr>
	<tr>
		<form method='POST' enctype="multipart/form-data">
		<td><input type="text" style="width: 150px" name="ntitle" class="ntitle" value="<?php echo $value['title']; ?>"></td>
		<td><select name="cat" style="width: 150px" class="form-control cat" required="true">
			<option value="">Select categories</option>
			<?php $cate = mysqli_query($conn, "SELECT cat_id,cat_title FROM categories ORDER BY `cat_id` asc");
while ($row = mysqli_fetch_array($cate))
{
    if ($row['cat_id'] == $cat)
    {
        echo "<option selected value='" . $row['cat_id'] . "'>" . $row['cat_title'] . "</option>";
    }
    else
    {
        echo "<option value='" . $row['cat_id'] . "'>" . $row['cat_title'] . "</option>";
    }
}
?>
			</select></td>
		<td><input type="text" style="width: 50px" name="nqty" class="nqty" value="<?php echo $value['qty']; ?>"></td>
		<td><input type="text" name="nbrand" class="nqty" style="width: 100px" value="<?php echo $value['brand']; ?>"></td>
		<td><input type="text" name="nprice" style="width: 100px" class="nprice" value="<?php echo $value['price']; ?>"></td>
        <td><input type="file" name="npic" style="width: 200px" class="npic"<?php echo $req ?> value="<?php echo $value['image']; ?>"></td>
        <td><textarea name="desc"><?php echo $value['descr']; ?></textarea></td>   
        <td><button type="submit" class="submit btn btn-success" style="width: 130px" name="submit" data-id="<?php echo $value['product_id']; ?>" >Update Item
        </button></td>
        
    </form>

	</tr>
	
	</table>
	 <?php echo $msg;
// require_once('items.php');

?>
</div>
