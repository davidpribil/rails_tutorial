$(document).ready(function() {
  changeSubmit(false);
  $('.js-username').on('keyup', function(event) {
    if(validateEmail($(this).val())){
      $.get(getEmailValidationUrl(),
        { email: $(this).val() })
      .done(function(result){
          changeSubmit(result);
        });
    }
    changeSubmit(false);
  });

  function changeSubmit(enable) {
    var $button = $('.js-new-user-button');
    if(enable){
      $button.removeAttr('disabled');
    } else{
      $button.attr('disabled', 'disabled');
    }
  }

  function validateEmail(inputString) {
    return /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/.exec(inputString);
  }

  function getEmailValidationUrl(){
    return $('.new_user').data('validate-email-url');
  }
});