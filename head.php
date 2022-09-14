<?php
require ('functions.php');
ob_start();

if (empty($cunt))
{
    $cunt = 0;
}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Ecommerce | <?php echo $file; ?></title>
	<link rel="stylesheet" href="css\style.css">
	<script src="main.js"></script>
	 <!-- add bootstrap 5 css file -->
	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<!--jquery Minified -->
	 <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<!--  add bootstrap 5 js file -->
	 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>

	<!-- add bundel js -->
	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <!-- <script src="https://js.stripe.com/v3/"></script> -->
	<script src="js\ecom.js"></script>
	<script src="js\function.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" crossorigin="anonymous">

	<!-- Latest compiled and minified JavaScript -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
	<!-- Stripe CDN -->
	<script src="https://js.stripe.com/v3/"></script>
    <script src="stripe/schk.js" defer></script>
</head>
<body>


	<div class="container">

		<h2><?php if ($file == 'cart')
{ ?>
<span class="badge badge-secondary badge-pill"><a href="index.php" class="text-white"> <i class="glyphicon glyphicon-arrow-left text-white"></i> Products</a></span>
<?php
} ?> &nbsp; <?php echo $file ?> &nbsp;
          <?php if ($file == 'cart')
{ ?>
<span class="badge badge-secondary badge-pill"><a href="checkout.php" class="text-white"> Proceed to checkout <i class="glyphicon glyphicon-arrow-right text-white"></i></a></span>
<?php
}
 if ($file == 'Location')
{
}

if ($file == 'Location')
{
}

else
{ ?>
          <span class="items badge badge-secondary badge-pill">Your cart: <span id="item" class="item"><?php
    if (isset($_COOKIE['shopping_cart']))
    {
        $count = json_decode($_COOKIE['shopping_cart'], 1);
        // echo print_r($count,1);
        echo count(array_keys($count));
    }
    else
    {
        echo '0';
    }

?></span></span>
          <p class="msg fs-6"></p> 

<?php
}
?>
      </h2>
