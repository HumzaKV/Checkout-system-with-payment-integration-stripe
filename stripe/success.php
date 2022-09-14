<?php 
require('stripe-php-master\init.php');
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
 ?>
<!DOCTYPE html>
<html>
<head>
	<title>Success</title>
</head>
<body>
<?php echo $msg;

$stripe = new \Stripe\StripeClient(
  'sk_test_51LX41nBqeXGKFsVKGVL5brOEVDbjkMLMXyLLRluybCpvgJEtSOP50iAkzXSIvIniISdEwHOX5t0gCePt4ZswBxUF00kqyYvC3d'
);
$payint = $stripe->paymentIntents->retrieve(
  $payment_intent,
  []
);
print_r($payint);
?>
</body>
</html>