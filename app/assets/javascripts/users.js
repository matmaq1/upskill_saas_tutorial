//document ready
//set stripe public key
//whem user clicks submit
//prevent default behavior
//collect credit card fields
//inject card token as hidden field into a form
/* global $, Stripe */
//documtn ready
$(document).on('turbolinks:load', function(){
  var theForm = $('#pro_form')
  var submitBtn = $('#form-signup-btn')
  //set stripe public key
  Stripe.setPublishableKey( $('meta[name="stripe-key"]').attr('content'));
  //prevention
  submitBtn.click(function(event){
    event.preventDefault();
    //collect info and send it to stripe
    var ccNum = $('#card_number').val(),
        cvcNum = $('#card_code').val(),
        expMonth = $('#card_month').val(),
        expyear = $('#card_year').val();
        
    //send it now
    Stripe.createToken({
      number: ccNum,
      cvc: cvcNum,
      exp_month: expMonth,
      exp_year: expYear
      
    }, stripeResponseHandler);
  });




});