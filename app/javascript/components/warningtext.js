const warningtext = () => {
  // Get the modal
  var modal = document.getElementById("warningtext");

  // Get the button that opens the modal
  var btn = document.getElementById("open_warning");

  // Get the close button in footer
  var btn_close = document.getElementById("btn-close");

  // Get the <span> element that closes the modal
  var span = document.getElementsByClassName("close")[0];

  // When the user clicks on the button, open the modal
  btn.onclick = function() {
    modal.style.display = "block";
  }

  // When the user clicks on <span> (x), close the modal
  span.onclick = function() {
    modal.style.display = "none";
  }

   // When the user clicks on "Close" button, close the modal
  btn_close.onclick = function() {
    modal.style.display = "none";
  }

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }
};

export {warningtext};
