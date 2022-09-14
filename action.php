<?php
require_once ('config.php');
require('functions.php');
if (isset($_POST['action']) && $_POST['action'] == 'update')
{
    $id = mysqli_real_escape_string($conn, $_POST['id']);
    $tprice = mysqli_real_escape_string($conn, $_POST['tprice']);
    $pty = $_POST['qty'];
    if (mysqli_query($conn, "UPDATE cart set `tprice` = '$tprice', `qty` = '$pty' WHERE id = '$id'"))
    {
        echo "updated";
    }
    else
    {
        echo "Error: " . mysqli_error($conn);
    }
}
// add to cart
if (isset($_POST['action']) && $_POST['action'] == 'insert')
{
                $id = $_POST['pid'];
                $title = $_POST['item_name'];
                $qty = $_POST['pty'];
                $pic = $_POST['pic'];
                $price = $_POST['price'];

    if (isset($_COOKIE['shopping_cart']))
    {
        $cookie_data = stripcslashes($_COOKIE['shopping_cart']);
        $cart_data = json_decode($cookie_data, true);
    }
    else
    {
        $cart_data = array();
    }
    $item_array_id = array_column($cart_data, 'item_id');
    if (in_array($_POST['pid'], $item_array_id))
    {
        foreach ($cart_data as $key => $value)
        {
            if ($cart_data[$key]["item_id"] == $_POST['pid'])
            {
                 echo '<div class="myAlert-top alert alert-warning">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Warning!</strong> Item already exists.
</div>';
            }
        }
    }
    else
    {
        $item_array = array(
            'item_id' => $id,
            'qty' => $qty,
        );
        $cart_data[] = $item_array;

    }
    $item_data = json_encode($cart_data);
    setcookie('shopping_cart', $item_data, time() + (86400 * 30));
    if (isset($_COOKIE['shopping_cart'])) {
    	$count = json_decode($_COOKIE['shopping_cart'], 1);
    	$item =  count(array_keys($count));
    }
    else{
    	$item = 1;
    	$item = $item - 1;
    }
    
    echo $item;
}

if (isset($_POST['action']) && $_POST['action'] == 'less')
{

        $cookie_data = stripcslashes($_COOKIE["shopping_cart"]);
        $cart_data = json_decode($cookie_data, true);
        foreach ($cart_data as $key => $value)
        {
            if ($cart_data[$key]['item_id'] == $_POST['id'])
            {
                if ($cart_data[$key]['qty'] > 1)
                {
                    $cart_data[$key]['qty'] = $cart_data[$key]['qty'] - 1;
                    $inc_data = json_encode($cart_data);
                    // echo $inc_data;
                    setcookie('shopping_cart', $inc_data, time() + (86400 * 30));
                }
            }
        }
}

if ($_POST['action'] == "add")
    {
        $cookie_data = stripcslashes($_COOKIE["shopping_cart"]);
        $cart_data = json_decode($cookie_data, true);
        foreach ($cart_data as $key => $value)
        {
            if ($cart_data[$key]['item_id'] == $_POST['id'])
            {
                if ($cart_data[$key]['qty'] < 10)
                {
                    $cart_data[$key]['qty'] = $cart_data[$key]['qty'] + 1;
                    $inc_data = json_encode($cart_data);
                    setcookie('shopping_cart', $inc_data, time() + (86400 * 30));

                }
            }

        }
    }


if (isset($_POST['action']) && $_POST['action'] == 'remove')
{
        $cookie_data = stripcslashes($_COOKIE["shopping_cart"]);
        $cart_data = json_decode($cookie_data, true);
        foreach ($cart_data as $key => $value)
        {
            if ($cart_data[$key]['item_id'] == $_POST['id'])
            {
                unset($cart_data[$key]);
                $inc_data = json_encode($cart_data);
                setcookie('shopping_cart', $inc_data, time() + (86400 * 30));
            }
        }
                        $count = json_decode($_COOKIE['shopping_cart'], 1);
                 echo count(array_keys($count));
}

if (isset($_POST['action']) && $_POST['action'] == "clear")
    {
        setcookie('shopping_cart', '', time() - 3600);
    }

if (isset($_POST['action']) && $_POST['action'] == 'chkord')
{

    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $total = mysqli_real_escape_string($conn, $_POST['total']);
    $address = $_POST['address'];
    if (mysqli_query($conn, "INSERT INTO `orderr` (`name`,`total_price`,`email`, `address`,`payment_type`,`added_on`,`order_status`) VALUES('$name','$total','$email','$address','Cash on Delivery',NOW(),'0')"))
    {
        echo $_SESSION['ord_id'] = mysqli_insert_id($conn);
        // session_unset($_SESSION['cart']);
        
    }
    else
    {
        echo "Error: " . mysqli_error($conn);
    }
}
if (isset($_POST['action']) && $_POST['action'] == 'sts_upd')
{
    $ord_id = mysqli_real_escape_string($conn, $_POST['ord_id']);
    $status = mysqli_real_escape_string($conn, $_POST['status']);
    if (mysqli_query($conn, "UPDATE `orderr` SET `order_status`= '$status' WHERE ord_id = $ord_id"))
    {
    }
    else
    {
        echo "Error: " . mysqli_error($conn);
    }
}

if (isset($_POST['action']) && $_POST['action'] == 'stripe-pay')
{
    // cookie
    $cookie_data = stripcslashes($_COOKIE['shopping_cart']);
    $cart_data = json_decode($cookie_data, true);
    // checkout variables
    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $address = mysqli_real_escape_string($conn, $_POST['address']);
    $payment = mysqli_real_escape_string($conn, $_POST['payment']);
    $Total = mysqli_real_escape_string($conn, $_POST['total']);
    //insert checkout data in db
    if (mysqli_query($conn, "INSERT INTO `orderr` (`name`,`total_price`,`email`, `address`,`payment_type`,`added_on`,`order_status`) VALUES('$name','$Total','$email','$address','$payment',NOW(),'0')"))
    {
      $ord_id = mysqli_insert_id($conn);
      // insert cart items in db
      foreach ($cart_data as $key => $cart_item)
      {
        $prd_id = $cart_item['item_id'];
        $prd_qty = $cart_item['qty'];
        $prd_price = $cart_item['qty'] * $cart_item['price'] . ' ';
        $query = "INSERT INTO `order_detail`(`ord_id`, `prd_id`, `quantity`, `price`, `added_on`) VALUES ($ord_id,$prd_id,'$prd_qty','$prd_price',NOW())";
        if (mysqli_query($conn, $query))
        {
          $msg = 'inserted';
          $prd = mysqli_query($conn, "SELECT * FROM product WHERE `id` = $prd_id ");
          $prd_item = mysqli_fetch_assoc($prd);
          $new_qty = $prd_item['qty'];
          $new_qty = (((int)$new_qty) - ((int)$prd_qty));
          mysqli_query($conn, "UPDATE `product` SET `qty`='$new_qty' WHERE `id` = $prd_id");
          echo $new_qty;
        }
        else
        {
          echo 'error ' . mysqli_error($conn);
        }
      }
    }
}
?>
