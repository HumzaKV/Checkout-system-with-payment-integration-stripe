<form action="stripe/submit.php" method="post">
	<script
		src="https://checkout.stripe.com/checkout.js" class="stripe-button"
		data-key="<?php echo $Publishable_key?>"
		data-amount="<?php echo $Total.'00';?>"
		data-name="<?php echo $name?>"
		data-description="Some description"
		data-image="https://upwork-usw2-prod-assets-static.s3.us-west-2.amazonaws.com/org-logo/646958217225584640"
		data-currency="usd"
		data-email="<?php echo $email?>"
	>
	</script>

</form>