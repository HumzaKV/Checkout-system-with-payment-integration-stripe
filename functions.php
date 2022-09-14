<?php
function qty()
{
    $_SESSION['qnty'] = $_POST['qty'];
}

function get_data($str)
{
    if (!empty($str))
    {
        mysqli_real_escape_string($conn, $str);
    }
}

function chopExtension($filename)
{
    return pathinfo($filename, PATHINFO_FILENAME);
}

function alert($msg)
{
    echo "<script>alert('". $msg ."');</script>";
}

function convertCookieStringToArray($cookieStr)
{

    $array = explode(";", $cookieStr);

    $ret = array();
    foreach ($array as $item)
    {
        $item_array = explode("=", trim($item));
        $it_key = trim(reset($item_array));
        $it_value = trim(end($item_array));
        $ret[$it_key] = $it_value;
    }
    return $ret;
}
// google map api key
// AIzaSyAhmYz0JpWB2sWSfPTYf2--VPh1ffDPbQs
// IPLOCATION API
// c679b2747eeb4fd5b010c61354520a6d

?>
