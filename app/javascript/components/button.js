const buttonAnimation = () => {

    const element = document.querySelector('.click-animation');
    element.addEventListener("click", (event) => {
      event.currentTarget.classList.add("btn-animate");
      //document.getElementById("#button").classList.add('btn-animate');
    });
}

export {buttonAnimation};