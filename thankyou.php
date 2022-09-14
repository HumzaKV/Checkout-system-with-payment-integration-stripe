<?php 
require('stripe\stripe-php-master\init.php');
$msg = ''; 
$secret_key = ''; 
$payment_intent = '';  	
if (isset($_GET['redirect_status'])) {
	if ($_GET['redirect_status'] == 'succeeded') {
		$msg = 'Your order has been placed successsfully<br>';
	}
}
if (isset($_GET['payment_intent_client_secret'])) {
	$secret_key = $_GET['payment_intent_client_secret'];
}
if (isset($_GET['payment_intent'])) {
	$payment_intent = $_GET['payment_intent'];
}
if (isset($_GET['redirect_status'])) {
$stripe = new \Stripe\StripeClient(
  'sk_test_51LX41nBqeXGKFsVKGVL5brOEVDbjkMLMXyLLRluybCpvgJEtSOP50iAkzXSIvIniISdEwHOX5t0gCePt4ZswBxUF00kqyYvC3d'
);
$payint = $stripe->paymentIntents->retrieve(
  $payment_intent,
  []
);
print_r($payint);
}
setcookie('shopping_cart','',time() - 3600);
?><html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link href='https://fonts.googleapis.com/css?family=Lato:300,400|Montserrat:700' rel='stylesheet' type='text/css'>
	<style>
		@import url(//cdnjs.cloudflare.com/ajax/libs/normalize/3.0.1/normalize.min.css);
		@import url(//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css);
	</style>
	<link rel="stylesheet" href="https://2-22-4-dot-lead-pages.appspot.com/static/lp918/min/default_thank_you.css">
	<script src="https://2-22-4-dot-lead-pages.appspot.com/static/lp918/min/jquery-1.9.1.min.js"></script>
	<script src="https://2-22-4-dot-lead-pages.appspot.com/static/lp918/min/html5shiv.js"></script>
</head>
<body>
	<header>
		<br><br>
		<h1 class="site-header__title" data-lead-id="site-header-title">THANK YOU!</h1>
	</header>

	<div class="main-content">
		<i class="fa fa-check main-content__checkmark" id="checkmark"></i>
		<p class="main-content__body" data-lead-id="main-content-body"><?php echo $msg; ?></p>
	</div>
<br>
	<div>Still have some crave?</div>
	<a href="index.php"><span class="label label-primary">Head back to the Homepage</span></a>

	<footer class="site-footer" id="footer">
		<p class="site-footer__fineprint" id="fineprint">Copyright © 2022 | All Rights Reserved</p>
	</footer>
</body>
</html>