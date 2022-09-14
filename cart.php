<?php
require_once ("config.php");
$file = basename(__FILE__, '.php');
require ('head.php');
$msg = '';
?>


	<div class="table-responsive">
		<form method="POST">
			<table class="table table-bordered">
				<tr><th width="20%">Image</th>
					<th width="30%">Product Name</th>
					<th width="13%">Quantity</th>
					<th width="13%">Price Details</th>
					<th width="15%">Total Price</th>
					<th width="20%">Remove Item</th>
				</tr>

          
				<?php if (isset($_COOKIE['shopping_cart']))
{
    $Total = 0;
    $cookie_data = stripcslashes($_COOKIE['shopping_cart']);
    $cart_data = json_decode($cookie_data, true);
    foreach ($cart_data as $key => $cart_item)
    {
		$cid = $cart_item['item_id'];
        $query = "SELECT * FROM product WHERE `id` = $cid";
        $cart = $conn->query($query);
        $count = mysqli_fetch_assoc($cart);
?>
						<tr class='prd-cart'>
							<td><img src="<?php echo PRODUCT_IMAGE_SITE_PATH.$count['image']; ?>" alt="image"></td>
							<td class="item-name"> <?php echo $count['title']; ?></td>
							<td>
								<div class="input-group">
									<a class="input-group-addon less"><span class="changeqty" name="less"><b>-</b></span></a>
									<input type="text" disabled="true" name="qty" class="qty form-control text=center" value="<?php if($cart_item['qty'] < 1) $cart_item['qty'] = 1;if($cart_item['qty'] > 10) $cart_item['qty'] = 10; echo $cart_item['qty']; ?>">
									<a class="input-group-addon changeqty inc"><span class="changeqty"><b>+</b></span></a>
								</div>
								<input class="qt" type="hidden" name="qty">
								<input type="hidden" class="id" value="<?php echo $cart_item['item_id']; ?>">
								<input type="hidden" class="price" value="<?php echo $cart_item['price']; ?>">	
							</td>
							<td class="prd-price">$ <?php echo number_format($count['price'], 2); ?></td>
							<td class="total">$ <?php
        // $title = $cart_item['title'];
        echo number_format($count['price'] * $cart_item['qty'], 2); ?></td>
							<td><a class="text-danger remove">Remove Item</a></td>
						</tr>
						<?php
        $Total = $Total + ($cart_item['qty'] * $count['price']);
    }
?>
					<tr><td></td><td colspan="3" align="right">Total</td>
						<input type="hidden" class="ntotal" value="<?php echo $Total;?>">
						<td class="totall" align="right" class="text-center">$ <?php echo number_format($Total, 2); ?> </td>
						<td class="clear" align="right" class="text-center"><button><span>Clear Cart</span> </td>
					</tr>

					<?php
}
else 
	//if($_COOKIE['shopping_cart'] < 1 || isset($_COOKIE['shopping_cart'] == 'false')
{
    $msg = '<center><img src="https://media1.giphy.com/media/CcWVv13k8mA796x7o0/giphy.gif?cid=6c09b9521sewozng4viysn9301u6n3du2ikdqkpbi3anxcno&rid=giphy.gif&ct=s" alt="cart is empty"></center>';
}
?>
			</table>
<?php echo $msg; ?>
			<form>
			</div>
		</div>
		</body>
		</html>
