const stripe = Stripe("pk_test_51LX41nBqeXGKFsVKrwCH5Yz2peUHJQGta4moNHCwUD6AzPDHtpdJqkmLjftAuutVlw9P3V4tuqkGOwiqppyhy0h700wDf0o7y1");
const btn = document.querySelector('#btn');
btn.addEventListener('click', ()=>{
    fetch('../stripe/scheckout.php', {
        method: "POST",
        headers:{
            'Content-Type' : 'application/json',
        },
        body: JSON.stringify({})
    }).then(res => res.json())
    .then(payload => {
        stripe.redirectToCheckout({sessionId: payload.id})
    })
})