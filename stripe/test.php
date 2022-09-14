
<?php 
   $report_generate = [];
    $cookie_data = stripcslashes($_COOKIE['shopping_cart']);
    $cart_data = json_decode($cookie_data, true);

    foreach ($cart_data as $key => $cart_item)
    {

      $report_generate[] = [

[
     "price_data" =>[
       "currency" => "gbp",
                "product_data" =>[
                 "name" => $cart_item['item_name'],
                 "description" => "Latest mobile 2022"
                ],
                "unit_amount" => $cart_item['price']
     ],
     "quantity" => $cart_item['qty']
   ]    
    ];
    }


    $jsonstart = '    "success_url" => "http://127.0.0.1/hamza/ecommerce/success.html",
    "cancel_url" => "http://127.0.0.1/hamza/ecommerce/cancel.html",
    "payment_method_types" => ["card", "alipay"],
    "mode" => "payment",
      "line_items" => [';
   print_r($report_generate);
    $jsonend = '  ],
]);';

$final = $jsonstart.$report_generate.$jsonend;
// print_r($final);
?>