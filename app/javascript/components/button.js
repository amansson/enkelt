const buttonAnimation = () => {

    const element = document.querySelector('.click-animation');
    if (element) {
      element.addEventListener("click", (event) => {
        event.currentTarget.classList.add("btn-animate");
    //document.getElementById("#button").classList.add('btn-animate');
      });
    }

    const element_inter = document.querySelector('.click-animation-inter');
    if (element_inter) {
      console.log(element_inter);
      element_inter.addEventListener("click", (event2) => {
        console.log("Click");
        event2.currentTarget.classList.add("btn-animate-inter");
        //document.getElementById("#button").classList.add('btn-animate');
      });
    }

}

export {buttonAnimation};
