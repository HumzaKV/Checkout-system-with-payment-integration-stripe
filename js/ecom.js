$(document).ready(function() {
    var total = '';
    var ntotal = '';
    var net = '';
    var itm = $("#item").text();
    var i = parseInt(itm, 10);
    i = i + 1
    $(".item").load(location.href + " .item"); 
    //stripe 
    // if ($name) 
    // {
    //             // $(".chkfname").val(fname);
    //     // $(".chklname").val(lname);
    //     // $(".chkemail").val(mail);
    //     // $(".chkaddress").val(addrs);
    // }

    $('.pay').click(function() {
     console.log("entered");

 });


    //cart
    $('.add').click(function add(e) {
        e.preventDefault();
        var qty = $(this).closest('.product').find('.qty').val();
        var value = parseInt(qty, 10);
        value = isNaN(value) ? 0 : value;
        var pid = $(this).closest('.product').find('.pid').val();
        var item_name = $(this).closest('.product').find('.item_name').text();
        var pcheck = $(this).closest('.product').find('.price').val();
        var price = parseInt(pcheck, 10);
        price = isNaN(pcheck) ? 0 : pcheck;
        var total = ((pcheck) * (value));
        net = (net + total);
        // '$ '+ number_format(ntotal - total)
        // $Total = $Total + ($cart_item['qty'] * $cart_item['price']);
        var pic = $(this).closest('.product').find('.pic').attr('src');

        $.ajax({
            type: "POST",
            url: "action.php",
            data: {
                pid: pid,
                item_name: item_name,
                pty: value,
                pic: pic,
                price: price,
                action: 'insert',
            },
            dataType: 'JSON',
            success: function(data, response, xmlhttp) {
                $(".item").text(data + 1);

            },

            error: function(xhr, status, error) {
                console.error(status);
            }

        });

    });


    $(document).on('click', '.inc', function valins() {
        var qty = $(this).closest('.prd-cart').find('.qty').val();
        var value = parseInt(qty, 10);
        value = isNaN(value) ? 0 : value;
        //increment
        if (value < 10) {
        	value++;
            $(this).closest('.prd-cart').find('.qty').val(value);
            var qty = $(this).closest('.prd-cart').find('.qty').val();
            var value = parseInt(qty, 10)
            //price
            var price = $(this).closest('.prd-cart').find('.price').val();
            var pcheck = parseInt(price, 10);
            //check
            pcheck = isNaN(pcheck) ? 0 : pcheck;
            value = isNaN(value) ? 0 : value;
            total = ((pcheck) * (value));
            ntotal = $('.ntotal').val();
            ntotal = parseInt(ntotal);
            var test = ntotal + pcheck;
            $('.ntotal').val((test));
            $('.totall').text('$ '+ number_format(test));
        }
        //check
        $(this).closest('.prd-cart').find('.total').text('$ '+ number_format(total, 2));
        //update record
        var iid = $(this).closest('.prd-cart').find('.id').val();
        $.ajax(
        {
          url	:	"action.php",
          method :   "POST",
          data	:	{ 
           id: iid,
           action: 'add', 
       },
       success	:	function(data)
       { 
          setCookie('totalp',total,3);
      },

      error: function(xhr, status, error) {
         console.error(status);
     }
 });

    });
    //decre
    $(document).on('click', '.less', function valdes() {
        var qty = $(this).closest('.prd-cart').find('.qty').val();
        var value = parseInt(qty, 10)
        value = isNaN(value) ? 0 : value;
        if (value > 1) {
            value--;
            $(this).closest('.prd-cart').find('.qty').val(value);
            var qty = $(this).closest('.prd-cart').find('.qty').val();
            var value = parseInt(qty, 10)
            //price
            var price = $(this).closest('.prd-cart').find('.price').val();
            var pcheck = parseInt(price, 10);
            var title = $('.item-name').text();
            //check
            pcheck = isNaN(pcheck) ? 0 : pcheck;
            value = isNaN(value) ? 0 : value;
            total = ((pcheck) * (value));
            ntotal = $('.ntotal').val();
            ntotal = parseInt(ntotal);
            var test = ntotal - pcheck;
            $('.ntotal').val((test));
            $('.totall').text('$ '+ number_format(test));
        }

        //update record
        var iid = $(this).closest('.prd-cart').find('.id').val();
        $.ajax(
        {
          url	:	"action.php",
          method :   "POST",
          data	:	{ 
           id: iid,
           action: 'less',
       },
       success	:	function(data)
       { 

       },

       error: function(xhr, status, error) {
         console.error(status);
     }
 });

    });

    $('.remove').click(function rem(e) {

        var qty = $(this).closest('.prd-cart').find('.qty').val();
        var value = parseInt(qty, 10);
        var price = $(this).closest('.prd-cart').find('.price').val();
        var pcheck = parseInt(price, 10);
        pcheck = isNaN(pcheck) ? 0 : pcheck;
        total = ((pcheck) * (value));
        ntotal = $('.ntotal').val();
        ntotal = parseInt(ntotal);
        $(this).closest('.prd-cart').remove();
        $('.ntotal').val((ntotal - total));
        $('.totall').text('$ '+ number_format(ntotal - total));
        // alert(ntotal);
        // alert();
        var iid = $(this).closest('.prd-cart').find('.id').val();
        // e.preventDefault();
        $.ajax({
            url: "action.php",
            method: "POST",
            data: {
                id: iid,
                action: 'remove',
            },
            success: function(data) {
            	$(".item").text(data - 1);
            	$(".ctm").text(data - 1);
            	// location.reload();
            },

            error: function(xhr, status, error) {
                console.error(status);
            }
        });

    });

    $(document).on('click', '.clear', function clear() {

        $.ajax({
            type: "POST",
            data: {
                action: "clear",
            },
            url: "action.php",
            success: function(data, response, xmlhttp) {
                window.location.href = "cart.php";
            },

            error: function(xhr, status, error) {
                console.error(xhr);
            }

        });clear

    });

    $('.items').click(function order(e) {
        window.location.href = 'cart.php';
    });

    $('.date').click(function(e) {
        // e.preventDefault();
        var oid = $(this).closest('.ord-det').find('.ord-id').text();
        var ord_id = parseInt(oid, 10);
        ord_id = isNaN(ord_id) ? 0 : ord_id;
        $.ajax({
            type: "POST",
            data: {
                ord_id: ord_id,
                action: "ord_det",
            },
            url: "order_details.php",
            success: function(data, response, xmlhttp) {
                window.location.href = "?order_details";
            },

            error: function(xhr, status, error) {
                console.error(xhr);
            }

        });
    });

    $('.status').change(function(e) {
        // e.preventDefault();
        var oid = $(this).closest('.ord-det').find('.ord-id').text();
        var ord_id = parseInt(oid, 10);
        ord_id = isNaN(ord_id) ? 0 : ord_id;
        var status = $(this).val();
        $.ajax({
            type: "POST",
            data: {
                ord_id: ord_id,
                status: status,
                action: "sts_upd",
            },
            url: "action.php",
            success: function(data, response, xmlhttp) {
                window.location.href('admin.php');
            },

            error: function(xhr, status, error) {
                console.error(xhr);
            }

        });
    });

    $('.pay').click(function() 
    {
         console.log("entered"); 
         if($('#radio1')[0].checked) {
            //   cod
            $('.button').html('<input type="submit" name="order" class="btn btn-primary chkout" value="Place Order"></input>');
        }
         if($('#radio2')[0].checked) {
            //  stripe
            }

    });

    $('.avl').change(function(e) {
        $(this).closest('.prd-cart').find('.btn').remove();
    });

  $('.chkout').click(function(e) {
        // $('#exampleModalCenter').modal('show');
        // e.preventDefault();
    });

  $('.stripebtn').click(function(e) {
        var name = $('.chkfname').val() +' '+ $('.chklname').val();
        var email = $('.chkemail').val();
        var address = $('.chkaddress').val();
        var payment = 'stripe';
            total = $('.hiddtotal').val();
        $.ajax({
            type: "POST",
            data: {
                name: name,
                email: email,
                address: address,
                payment: payment,
                total: total,
                action: "stripe-pay",
            },
            url: "action.php",
            success: function(data, response, xmlhttp) {
                window.location.href('thankyou.php');
            },

            error: function(xhr, status, error) {
                console.error(xhr);
            }

        });
  });

  setTimeout(function(){
    $(".myAlert-top").hide(); 
}, 2000);

});