<?php 
require('../config.php');
Stripe\Stripe::setVerifySslCerts(false);
if (isset($_POST['stripeToken'])) 
{
	$token = $_POST['stripeToken'];

$charge = \Stripe\Charge::create([
        // "customer" => $customer->id,	
		"amount"=>500,
		"currency"=>"usd",
		"description"=>"Kingdom Vision Desc",
		"source"=>$token,
]);

$customer = \Stripe\Customer::create([
  'email' => $_POST['stripeEmail'],
]);
// echo "<pre>";
// print_r($_POST);
	// $data = Stripe\Charge::create(array(
 //        "customer" => $customer->id,	
	// 	"amount"=>500,
	// 	"currency"=>"usd",
	// 	"description"=>"Kingdom Vision Desc",
	// 	"source"=>$token,
	// ));
}
?>

<?php require('stripecheckout.php'); ?>