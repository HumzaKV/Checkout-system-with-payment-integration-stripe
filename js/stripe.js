var elements = stripe.elements({
  clientSecret: 'CLIENT_SECRET',
});
var paymentElement = elements.create('payment',billingDetails);

// Customize which fields are collected by the Payment Element
var paymentElement = elements.create('payment', {
  fields: {
    billingDetails: {
      name: 'never',
      email: 'never',
    }
  }
});

// If you disable collecting fields in the Payment Element, you
// must pass equivalent data when calling `stripe.confirmPayment`.
form.addEventListener('submit', async (event) => {
  stripe.confirmPayment({
    elements,
    confirmParams: {
      return_url: 'https://example.com',
      payment_method_data: {
        billing_details: {
          name: 'Jenny Rosen',
          email: 'jenny.rosen@example.com',
        }
      },
    },
  })
  .then(function(result) {
    if (result.error) {
      // Inform the customer that there was an error.
    }
  });
});

 $(document).on('click', '.stripe-checkout', function (e) {
        e.preventDefault();
        $(".error").addClass("d-none");
        loading(true);
        $.ajax({
            url: BOZ.processCheckoutUrl,
            method: 'POST',
            data: $("#checkout-form").serialize(),
            success: function (response) {
                if (response.errors) {
                    $.each(response.errors, function (key, value) {
                        $('.' + key).removeClass('d-none');
                        $('.' + key).html(value);
                    });
                    BOZ.show_alert('error', 'Checkout form is not Complete!');
                    return;
                } else {
                    if (response.client_secret && response.form_data) {
                        let formData = response.form_data,
                            orderID = response.order_id;
                        // loading(true);
                        // confirm payment intent by client secret
                        stripe.confirmCardPayment(response.client_secret, {
                            payment_method: {
                                card: card,
                                billing_details: {
                                    name: formData.account.first_name + ' ' + formData.account.last_name,
                                    email: formData.account.email,
                                    phone: formData.account.phone,
                                    address: {
                                        city: formData.billing.city,
                                        country: formData.billing.country,
                                        line1: formData.billing.address_1,
                                        line2: formData.billing.address_2,
                                        state: formData.billing.state,
                                        postal_code: formData.billing.postcode,
                                    },
                                },
                            },
                            receipt_email: formData.account.email,
                            shipping: {
                                address: {
                                    city: formData.shipping.city,
                                    country: formData.shipping.country,
                                    line1: formData.shipping.address_1,
                                    line2: formData.shipping.address_2,
                                    state: formData.shipping.state,
                                    postal_code: formData.shipping.postcode,
                                },
                                name: formData.shipping.first_name + ' ' + formData.shipping.last_name,
                                carrier: 'USPS',
                                // phone: '13546321',
                                // tracking_number: '548322s1d5',
                            },
                            // payment_method_types: 'card',
                            // return_url: ''
                        }).then(function (result) {
                            if (result.error) {
                                console.log(result.error.message);
                                // Show error to your customer
                                showError(result.error.message);
                            } else {
                                if (result.paymentIntent.status === 'succeeded') {
                                    // console.log(result)
                                    paymentSuccess({ 'payment_intent_id': result.paymentIntent.id, 'order_id': orderID, 'payment_method': formData.payment_method })
                                    // Show a success message to your customer
                                    // There's a risk of the customer closing the window before callback
                                    // execution. Set up a webhook or plugin to listen for the
                                    // payment_intent.succeeded event that handles any business critical
                                    // post-payment actions.
                                }
                                // The payment succeeded!
                                // orderComplete(result.paymentIntent.id);
                            }
                        });
                    }

                }
            }
        });
    });