`<?php
require_once ("config.php");
if (isset($_POST['type']) && !empty($_GET['type']))
{
    $type = $_GET['type'];
    if ($type == 'status')
    {
        $operation = $_GET['operation'];
        $id = $_GET['id'];
        if ($operation == 'active')
        {
            $dta = '1';
        }
        elseif ($operation != 'active')
        {
            $dta = '0';
        }
        $upd_status = mysqli_query($conn, "UPDATE `product` SET status`= '$dta' WHERE `id` = $id");
    }

}

$sql = "SELECT product.*,categories.cat_title FROM Product,categories WHERE Product.cat_id = categories.cat_id ORDER BY product.id desc";
$feature = $conn->query($sql);
?>
<body>
	<div class="container" style="width: 65%">
		<h2>Products</h2>
		<div class="row">
					<?php
if (mysqli_num_rows($feature) > 0)
{
    while ($product = mysqli_fetch_assoc($feature))
    {
        if ($product['status'] == '0')
        {
            $status = '<a href="?type=status&operation=deactive&id=' . $product['id'] . '"><span class="bg-success text-white"> active </span></a>';
        }
        else
        {
            $status = '<a href="?type=status&operation=active&id=' . $product['id'] . '"><span class="bg-danger text-white"> nonactive </span></a>';
        }
?>
					 	<div class="col-md-4 mb-4">
						<form method="POST" action="?edit&id=<?php echo $product['id']; ?>">
		 					<div class="product">
		 						<img src="<?php echo PRODUCT_IMAGE_SITE_PATH . $product['image']; ?>" alt="123" class="img-responsive">
					 			<h5 class="text-info"><b>Name:</b> <?php echo $product['title']; ?></h5>
					 			<h5 class="text-info"><b>Category:</b> <?php echo $product['cat_title']; ?></h5>
					 		    <h5 class="text-danger"><b>Rs:</b> <?php echo number_format($product['price'], 2); ?></h5>
					 		    <input type="text" disabled="true" name="quantity" class="form-control" value="qty: <?php echo $product['qty']; ?>">
					 		    <input type="hidden" name="hidden_name" value="<?php echo $product['title']; ?>">
					 		    <input type="hidden" name="hidden_price" value="<?php echo $product['price']; ?>">
					 		    <input type="hidden" name="hid_img" value="<?php echo $product['image']; ?>">
							    <input type="submit" name="edit" value="edit" style="        margin-top: 5px;" class="btn btn-success">
							    <!-- <input type="submit" name="details" value="details" style="        margin-top: 5px;" class="btn btn-danger"> -->
							    <? php
        // echo $status;
         ?>
					 		</div>
					 	</form>
	</div>

<?php
    }
}
if (isset($_POST['details']))
{
    echo "details";
}
?>
</div>
</div>
</body>
</html>
