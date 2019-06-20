const showvideo = () => {
  // Get the modal
  var v_modal = document.getElementById("showvideo");

  // Get the button that opens the modal
  var v_btn = document.getElementById("open_video");

  // Get the close button in footer
  var v_btn_close = document.getElementById("btn-video-close");

  // Get the <span> element that closes the modal
  var v_span = document.getElementsByClassName("video-close")[0];

  // When the user clicks on the button, open the modal
  v_btn.onclick = function() {
    v_modal.style.display = "block";
  }

  // When the user clicks on <span> (x), close the modal
  v_span.onclick = function() {
    v_modal.style.display = "none";
  }

   // When the user clicks on "Close" button, close the modal
  v_btn_close.onclick = function() {
    v_modal.style.display = "none";
  }

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
    if (event.target == modal) {
      v_modal.style.display = "none";
    }
  }
};

export {showvideo};

