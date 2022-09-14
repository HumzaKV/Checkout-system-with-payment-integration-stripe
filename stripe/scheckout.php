<?php
require('stripe-php-master\init.php');
    
    // $report_generate = [];

    $cookie_data = stripcslashes($_COOKIE['shopping_cart']);
    $cart_data = json_decode($cookie_data, true);

    foreach ($cart_data as $key => $cart_item)
    {

      $report_generate[] = [
     "price_data" =>[
       "currency" => "gbp",
                "product_data" =>[
                 "name" => $cart_item['item_name'],
                 "description" => "Latest mobile 2022".$key
                ],
                "unit_amount" => $cart_item['price']
     ],
     "quantity" => $cart_item['qty']
       
    ];
    }

header('Content-Type', 'application/json');

$stripe = new Stripe\StripeClient('sk_test_51LX41nBqeXGKFsVKGVL5brOEVDbjkMLMXyLLRluybCpvgJEtSOP50iAkzXSIvIniISdEwHOX5t0gCePt4ZswBxUF00kqyYvC3d');
$session = $stripe->checkout->sessions->create([
    "success_url" => "http://127.0.0.1/hamza/ecommerce/success.html",
    "cancel_url" => "http://127.0.0.1/hamza/ecommerce/cancel.html",
    "payment_method_types" => ['card', 'alipay'],
    "mode" => 'payment',
      "line_items" => [
$report_generate,
                                                              

  ],
]);

echo json_encode($session);

?>