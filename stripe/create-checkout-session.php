<?php

require '../config.php';
// This is your test secret API key.
\Stripe\Stripe::setApiKey('sk_test_51LX41nBqeXGKFsVKGVL5brOEVDbjkMLMXyLLRluybCpvgJEtSOP50iAkzXSIvIniISdEwHOX5t0gCePt4ZswBxUF00kqyYvC3d');

header('Content-Type: application/json');

$checkout_session = \Stripe\Checkout\Session::create([
  'line_items' => [[
    # Provide the exact Price ID (e.g. pr_1234) of the product you want to sell
    'price' => 'price_1LYRnDBqeXGKFsVKkDu7Y2VI',
    'quantity' => 1,
  ]],
  'mode' => 'payment',
  'success_url' => SITE_PATH . '/success.php',
  'cancel_url' => SITE_PATH . '/fail.php',
]);

header("HTTP/1.1 303 See Other");
header("Location: " . $checkout_session->url);
?>