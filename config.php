<?php
$conn = mysqli_connect('localhost', 'root', '', 'sample');
if (mysqli_connect_errno())
{
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    exit();
}

session_start();
define('SERVER_PATH', $_SERVER['DOCUMENT_ROOT'] . '/hamza/ecommerce/');
define('SITE_PATH', 'http://127.0.0.1/hamza/ecommerce/');

define('PRODUCT_IMAGE_SERVER_PATH', SERVER_PATH . 'product_images/');
define('PRODUCT_IMAGE_SITE_PATH', SITE_PATH . 'product_images/');

require('stripe\stripe-php-master\init.php');
$Publishable_key  = 'pk_test_51LX41nBqeXGKFsVKrwCH5Yz2peUHJQGta4moNHCwUD6AzPDHtpdJqkmLjftAuutVlw9P3V4tuqkGOwiqppyhy0h700wDf0o7y1';
$Secret_key = 'sk_test_51LX41nBqeXGKFsVKGVL5brOEVDbjkMLMXyLLRluybCpvgJEtSOP50iAkzXSIvIniISdEwHOX5t0gCePt4ZswBxUF00kqyYvC3d'; 
Stripe\Stripe::setApiKey($Secret_key);
?>
 	