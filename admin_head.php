<!DOCTYPE html>
<html lang="en">
<?php require_once ('config.php');
require_once ('admin_head.php'); ?>
            <?php $ord = "SELECT * FROM orderr";
$ords = $conn->query($ord);
?>
    <?php $ord_det = "SELECT * FROM order_details ORDER BY ord_id ASC";
$ord_dets = $conn->query($ord);
?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin - Dashboard</title>

    <!-- Custom fonts for this template-->
      <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <!-- <script src="main.js"></script> -->
    
    <script src="https://code.jquery.com/jquery-3.4.1.js" 
    integrity=
    "sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" 
    crossorigin="anonymous">
    </script>
    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/demo.css">
    <script src="js/ecom.js"></script>

</head>
