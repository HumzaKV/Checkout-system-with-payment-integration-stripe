<?php
require_once ("config.php");
$sql = "SELECT * FROM product ORDER BY id ASC";
$feature = $conn->query($sql);
$file = basename(__FILE__, '.php');
require ('head.php');

if (isset($_POST['add']))
{
}

?>
<body>

		<div class="row">
<?php
if (mysqli_num_rows($feature) > 0)
{
    while ($product = mysqli_fetch_assoc($feature))
    {
        $cid = $product['id'];
        $query = "SELECT * FROM cart WHERE `id` = '$cid'";
        $cart = $conn->query($query);
        $count = mysqli_num_rows($cart);

?>
					 	<div class="col-md-3">
						<form method="POST">
		 					<div class="product prd-cart">
		 						<img src="<?php echo PRODUCT_IMAGE_SITE_PATH . $product['image']; ?>" alt="hello" class="img-responsive pic">
					 			<h5 class="text-info item_name"><?php echo $product['title']; ?></h5>
					 		    <h5 class="text-danger">Rs:<span><?php echo $product['price'].'	'; ?></span><span class="text-success avl">	avl qty: <?php echo $product['qty']; ?></span></h5>
<!-- 					 		<input type="hidden" name="item-qty" class="qty form-control text=center" value="1"> -->
					 		    <input type="hidden" name="img" value="<?php echo PRODUCT_IMAGE_SITE_PATH . $product['image']; ?>">
                                    <div class="input-group">
									<span class="input-group-addon changeqty less" name="less"><b>-</b></span>
									<input type="text" disabled="true" name="item-qty" class="qty form-control text=center" value="1">
									<span class="input-group-addon changeqty inc"><b>+</b></span>
								</div>
								<input type="hidden" name="hidden_name" class="item_name" value="<?php echo $product['title']; ?>">
					 		    <input type="hidden" class="price" name="hidden_price" value="<?php echo $product['price']; ?>">
					 		    <input type="hidden" name="pid" class="pid" value="<?php echo $product['id']; ?>">
								<?php if ($product['qty'] > 1){?>
							    	<input type="button" name="add" value="Add to cart" style="margin-top: 5px;" class=" btn btn-success add">
					 		    <?php } 
								else{ ?>
									<input type="button" disabled value="Out of Stock" style="margin-top: 5px;" class=" btn btn-danger">
									<?php } ?>
					 		    
					 		</div>
					 	</form>
	</div>
	
<?php
    }
}

?>
</div>
</div>
</body>
</html>
