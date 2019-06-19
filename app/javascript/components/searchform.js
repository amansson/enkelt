
const searchform = () => {

  $(document).ready(function(){
    $('.header-form').click(function (e) {

      $(".ripple").remove();

      var posX = $(this).offset().left,
          posY = $(this).offset().top,
          buttonWidth = $(this).width(),
          buttonHeight =  $(this).height();

      $(this).prepend("<span class='ripple'></span>");

      if(buttonWidth >= buttonHeight) {
        buttonHeight = buttonWidth;
      } else {
        buttonWidth = buttonHeight;
      }

      // Get the center of the element
      var x = e.pageX - posX - buttonWidth / 2;
      var y = e.pageY - posY - buttonHeight / 2;


      // Add the ripples CSS and start the animation
      $(".ripple").css({
        width: buttonWidth,
        height: buttonHeight,
        top: y + 'px',
        left: x + 'px'
      }).addClass("rippleEffect");

    });

   $('.header-form input').focus(function() {
      $(this).addClass('scale');
    });

    $('.header-form input').blur(function() {
      $('.header-form input').val("");
      $(this).removeClass('scale');
      //$('.results-container, .assistant, .assistant button, .results__item:nth-child(2), .results__item:nth-child(3), .results__item:nth-child(4), .show-all, .loader, .progress-bar').removeClass('show-results');
    });

    $('.header-form').on('submit', function(e) {
       $(".ripple").remove();
       document.forms[0].submit();

      return false;
    });

  });
};

export {searchform};
