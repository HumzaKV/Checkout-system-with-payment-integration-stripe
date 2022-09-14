
  <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Stripe Payment</h5>
      </div>
      <div class="modal-body">
    <!-- Display a payment form -->
    <form id="payment-form" method="GET">
      <div id="payment-element">
        <!--Stripe.js injects the Payment Element-->
      </div>

        <div id="submit">
        <div class="spinner hidden" id="spinner"></div>
        <input type="submit" name="strip" id="button-text" class="btn bg-primary stripebtn" value="Pay now">
        </div>
      <div id="payment-message" class="hidden"></div>
    </form>
    </div>
     <?php
        if (isset($_GET['strip'])){
            echo 'hello';
    }
     ?>
    </div>
  </div>
</div>
