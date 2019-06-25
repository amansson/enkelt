const showscrew = () => {
  // Get the modal
  const modal = document.querySelector("#show_screw");

  const btn = document.querySelector("#open_screw");

  const btn_close = document.querySelector("#btn-close-screw");



  // When the user clicks on the button, open the modal
  if (btn){
    btn.addEventListener("click", () => {
      if (modal.style.display === "block" ) {
        modal.style.display = "none" }
        else {
          modal.style.display = "block"
        }
    })



    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
      if (event.target == modal) {
        modal.style.display = "none";
      }
    }

    // When the user clicks on "Close" button, close the modal
    btn_close.onclick = function() {
      modal.style.display = "none";
    }
  }
};

export {showscrew};
