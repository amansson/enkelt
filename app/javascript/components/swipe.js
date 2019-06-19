import Swiper from "swiper";

const swipe = () => {
  var swiper = new Swiper('.swiper-container', {
    fadeEffect: {
      crossFade: true
    },
    pagination: {
      el: '.swiper-pagination',
      type: 'bullets',
    },
  });
}

export {swipe};
