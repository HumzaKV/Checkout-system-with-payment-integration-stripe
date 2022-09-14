<?php
require_once ('config.php');
$file = basename(__FILE__, '.php');
require_once ('head.php');
$Total = 0;
$msg = '';
// if (!empty($_POST)) {
//   $POST['chkfname'] = '';
//   $POST['chklname'] = '';
// $POST['chkemail'] = '';
//   $POST['chkaddress'] = '';
// }
?>
<body>
 <main>

   <!-- DEMO HTML -->
   <div class="row">
    <div class="col-md-4 order-md-2 mb-4">
      <h4 class="d-flex justify-content-between align-items-center mb-3">
        <span class="text-muted">Your cart</span>
        <span class="badge badge-secondary badge-pill ctm"><?php echo count(array_keys($count)); ?></span>
      </h4>
      <ul class="list-group mb-3 checkout">
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
          <li class="list-group-item d-flex justify-content-between lh-condensed prd-cart">
            <div>
              <h6 class="my-0 chktitle"><?php echo $count['title']; ?></h6>
              qty: <small class="text-muted chkqty"><?php if($cart_item['qty'] < 1) $cart_item['qty'] = 1;if($cart_item['qty'] > 10) $cart_item['qty'] = 10;  echo $cart_item['qty']; ?></small>
            </div>
            <span class="text-muted chktprice">$ <?php echo $cart_item['qty'] * $count['price']; ?></span><span class="glyphicon glyphicon-trash remove"></span>
            <input type="hidden" class="id" value="<?php echo $cart_item['item_id']; ?>">
          </li>
          <?php
          $Total = $Total + ($cart_item['qty'] * $count['price']);
          $_SESSION['total'] = $Total;
        }
      }
      else
      {
        header('location:index.php');
        die();
      } ?>
      <input type="hidden" name="hiddtotal" class="hiddtotal" value="<?php echo $Total; ?>">
      <li class="list-group-item d-flex justify-content-between lh-condensed">
        <div>
          <span class="my-0"><strong>Total ($)</strong></h6>
          </div>
          <span class="text-muted ctotal">$ <?php echo number_format($Total, 2); ?></span>
        </li>
      </ul>


    </div>
    <div class="col-md-8 order-md-1">
      <h4 class="mb-3">Billing address</h4>
      <form class="needs-validation" method="POST">
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="firstName">First name</label>
            <input type="text" class="form-control chkfname text" name="chkfname" id="firstName" placeholder="Enter First Name" value="<?php isset($_POST['chkfname']) ? $_POST['chkfname'] : '' ?>" required>
            <div class="invalid-feedback">
              Valid first name is required.
            </div>
          </div>
          <div class="col-md-6 mb-3">
            <label for="lastName">Last name</label>
            <input type="text" class="form-control chklname text" name="chklname" id="lastName" placeholder="Enter Last Name" value="<?php isset($_POST['chklname']) ? $_POST['chklname'] : '' ?>" required>
            <div class="invalid-feedback">
              Valid last name is required.
            </div>
          </div>
        </div>

        <div class="mb-3">
          <label for="email">Email <span class="text-muted">(Optional)</span></label>
          <input type="email" class="form-control chkemail text" name="chkemail" id="email" placeholder="you@example.com" value="<?php isset($_POST['chkemail']) ? $_POST['chkemail'] : '' ?>">
          <div class="invalid-feedback">
            Please enter a valid email address for shipping updates.
          </div>
        </div>

        <div class="input-group">
          <fieldset>
            <legend>Select a payment method:</legend>

            <span>
              <input type="radio" id="radio1" name="payment" class="pay" value="cod">
              <label for="huey">Cash On Delivery</label>
            </span>
            &nbsp;
            <span>
              <input type="radio" id="radio2" name="payment" class="pay" value="stripe">
              <label for="dewey">Stripe</label>
            </span>
          </fieldset>
          <br>
          <div class="mb-3">
            <label for="address">Address</label>
            <input type="text" class="form-control chkaddress text" name="chkaddress" id="address" placeholder="1234 Main St" required value="<?php isset($_POST['chkaddress']) ? $_POST['chkaddress'] : '' ?>">
            <div class="invalid-feedback">
              Please enter your shipping address.
            </div>
          </div>
          <hr class="mb-4">
          <div class="input-group-append button">
            <input type="button" name="order" class="btn btn-primary chkout" value="Place Order" data-toggle="modal" data-target="#exampleModalCenter">
          </div>
        </div>
        <span class="id"> </span>

      </form>
    </div>
  </div>

</div>
<!-- End Demo HTML -->
</main>
<!-- Model Start -->

<?php
require('stripe/index.php'); 

if (isset($_POST['order']))
{
  $name = $_POST['chkfname'] . ' ' . $_POST['chklname'];
  $email = $_POST['chkemail'];
  $address = $_POST['chkaddress'];
  $payment = $_POST['payment'];
    // echo $name."<br>".$email."<br>".$address;
  if ($payment == 'stripe') {
 // echo "<script> $('#exampleModalCenter').modal('show'); </script>";
  }
  else{
    if (mysqli_query($conn, "INSERT INTO `orderr` (`name`,`total_price`,`email`, `address`,`payment_type`,`added_on`,`order_status`) VALUES('$name','$Total','$email','$address','Cash on Delivery',NOW(),'0')"))
    {
      $ord_id = mysqli_insert_id($conn);
      foreach ($cart_data as $key => $cart_item)
      {
        $prd_id = $cart_item['item_id'];
        $prd_qty = $cart_item['qty'];
        $prd_price = $cart_item['qty'] * $count['price'] . ' ';
        $query = "INSERT INTO `order_detail`(`ord_id`, `prd_id`, `quantity`, `price`, `added_on`) VALUES ($ord_id,$prd_id,'$prd_qty','$prd_price',NOW())";
        if (mysqli_query($conn, $query))
        {
          $msg = 'inserted';
          $prd = mysqli_query($conn, "SELECT * FROM product WHERE `id` = $prd_id ");
          $prd_item = mysqli_fetch_assoc($prd);
          $new_qty = $prd_item['qty'];
          $new_qty = (((int)$new_qty) - ((int)$prd_qty));
          mysqli_query($conn, "UPDATE `product` SET `qty`='$new_qty' WHERE `id` = $prd_id");
          echo "<script>window.location.href = 'thankyou.php';</script>";
        }
        else
        {
          echo 'error ' . mysqli_error($conn);
        }
      }
    }
  }
}

?>

<!-- Bootstrap 5 JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
</body>
</html>
