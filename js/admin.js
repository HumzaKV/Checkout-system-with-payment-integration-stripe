$('.date').click(function (e)
		 {
		 	alert('hello');
		 	e.preventDefault();
		 	var oid = $(this).closest('.checkout').find('.chkqty').text();
            var ord_id = parseInt(oid, 10);
		 	    ord_id = isNaN(ord_id) ? 0 : ord_id;
		 	    $.ajax({
        type: "POST",
        url: "order_details.php",
        data: {
            ord_id: ord_id,
		    action: 'ord_det',
        },
        dataType: 'JSON',
        success: function(data, response, xmlhttp) {
        	alert('click');
        	window.location.href = "order_details.php";
        	// alert(data);
        },

        error: function(xhr, status, error) {
            console.error(xhr);
        }

    });
		 });