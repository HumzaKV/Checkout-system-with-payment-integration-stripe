<script>
const stripe = Stripe('pk_test_51LX41nBqeXGKFsVKrwCH5Yz2peUHJQGta4moNHCwUD6AzPDHtpdJqkmLjftAuutVlw9P3V4tuqkGOwiqppyhy0h700wDf0o7y1');
var checkoutButton = document.querySelector('#checkout-button');
<?php 
$stripe = new \Stripe\StripeClient('sk_test_51LX41nBqeXGKFsVKGVL5brOEVDbjkMLMXyLLRluybCpvgJEtSOP50iAkzXSIvIniISdEwHOX5t0gCePt4ZswBxUF00kqyYvC3d');
	
    $cookie_data = stripcslashes($_COOKIE['shopping_cart']);
    $cart_data = json_decode($cookie_data, true);
    $cart_items = [];
    foreach ($cart_data as $key => $cart_item)
    {
$product = $stripe->products->create([
  'name' => $cart_item['item_name'],
  'description' => '$12/Month subscription',

]);

$price = $stripe->prices->create([
  'unit_amount' => $cart_item['price'],
  'currency' => 'usd',
  'product' => $product['id'],
]);
 $report_generate[] = [
{
      // Define the product and price in the Dashboard first, and use the price
      // ID in your client-side code.
      price: 'price_1LYRnDBqeXGKFsVKkDu7Y2VI',
      quantity: 1
    }
 ]

     } ?>
checkoutButton.addEventListener('click', function () {
  stripe.redirectToCheckout({
    lineItems: [{
      // Define the product and price in the Dashboard first, and use the price
      // ID in your client-side code.
      price: 'price_1LYRnDBqeXGKFsVKkDu7Y2VI',
      quantity: 1
    }],
    mode: 'payment',
    successUrl: 'https://www.example.com/success',
    cancelUrl: 'https://www.example.com/cancel'
  });
});

</script>