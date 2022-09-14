<?php
require_once ('config.php');
require_once ('functions.php');
if (isset($_POST['action']) && $_POST['action'] == 'ord_det')
{
    $_SESSION['oid'] = mysqli_real_escape_string($conn, $_POST['ord_id']);
}
$ord_id = $_SESSION['oid'];
if ($details = mysqli_query($conn, "select * FROM order_detail WHERE ord_id = $ord_id"))
{
    // if($details = mysqli_query($conn, "SELECT order_detail.*,product.title FROM `order_detail`,`product` WHERE order_detail.ord_id = $ord_id and product.id = 7")) {
    
}
else
{
    echo "Error: " . mysqli_error($conn);
}

$data = mysqli_query($conn, "select * FROM orderr where ord_id = $ord_id");
$user = mysqli_fetch_array($data);
if ($user['order_status'] == 0)
{
    $status = "Pending";
}
else
{
    $status = "Completed";
}
?>
<a href="admin.php" class="text-dark"> &nbsp; Orders</a>
<div class="container">
    <div class="row">
<div class="col-md-3 col-md-offset-12 text-dark  "> <?php echo "<u>Name:</u> " . $user['name'] . "</br>  <u>Email:</u> " . $user['email']; ?> </div>
<div class="col-md-3 col-md-offset-12 text-dark  "> <?php echo "<u>Address:</u> <input type text readonly value='" . $user['address'] . "' class='border-0'></br>  <u>Payment Methoid:</u> " . $user['payment_type']; ?> </div>
<div class="col-md-3 col-md-offset-12 text-dark  "> <?php echo "<u>Added On:</u> " . $user['added_on'] . "</br>  <u>Total:</u> " . number_format($user['total_price'], 2); ?> </div>
<div class="col-md-3 col-md-offset-12 text-dark  "> <?php echo "<u>Order Status:</u> " . $status . "</br>  <u>Order Number:</u> " . $user['ord_id']; ?> </div>
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            <legend class="text-center">Order Details</legend>
            
<?php
while ($fetch = mysqli_fetch_array($details))
{
    $prd_id = $fetch['prd_id'];
    $product = mysqli_query($conn, "select * FROM product where id = $prd_id");
    $pull = mysqli_fetch_array($product);
?>
<div class="col-md-3 col-md-offset-3">
<!-- Image -->
             <div class="form-group">
              <label class="col-md-3 control-label" for="message">Image</label>
              <div class="col-md-9">
                <img src="<?php echo PRODUCT_IMAGE_SITE_PATH . $pull['image'] ?>" alt="hi">
              </div>
             </div>

            <!-- Name input-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="name">Title</label>
              <div class="col-md-9">
                <input id="name" name="title" readonly placeholder="Add Title" class="form-control form-control-user" value="<?php echo $pull['title'] ?>">
              </div>
            </div>
    
            <!-- price-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="email">Price</label>
              <div class="col-md-9">
                <input id="email" name="head" disabled value="<?php echo $fetch['price'] ?>" class="form-control form-control-user">
              </div>
            </div>
    

                 <!-- Quantity-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="email">Quantity</label>
              <div class="col-md-9">
                <input id="email" name="head" disabled value="<?php echo $fetch['quantity'] ?>" class="form-control form-control-user">
              </div>
            </div>

              <!-- Quantity-->
            <div class="form-group">
              <label class="col-md-12 control-label" for="email">Remaining Stock</label>
              <div class="col-md-9">
                <?php $new_qty = $pull['qty'];
    if ($new_qty <= 10 && $new_qty > 5)
    { ?> 
                  <input id="email" name="head" disabled value="<?php echo $new_qty ?>" class="form-control text-warning
 form-control-user">
 <?php
    }
    elseif ($new_qty <= 5)
    {
        echo '<input id="email" name="head" disabled value="' . $new_qty . '" class="form-control text-danger
 form-control-user">';
    }
    else
    {
        echo '<input id="email" name="head" disabled value="' . $new_qty . '" class="form-control
 form-control-user">';
    }
?>

              </div>
            </div>
    

                      <!-- total-->
            <div class="form-group">
              <label class="col-md-12 control-label" for="email">Total Amount</label>
              <div class="col-md-9">
                <input id="email" name="head" disabled value="<?php echo $pull['qty'] * $fetch['price'] ?>" class="form-control form-control-user">
              </div>
            </div>
    
</div>
          <?php
}
?>
          
      </div>
</div>
