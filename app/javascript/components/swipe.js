import Swiper from "swiper";
function swipe() {
  var galleryThumbs = new Swiper('.gallery-thumbs', {
  spaceBetween: 10,
  slidesPerView: 7,
});

var galleryTop = new Swiper('.gallery-top', {
  spaceBetween: 10,
  thumbs: {
    swiper: galleryThumbs
  },
  pagination: {
    el: '.swiper-pagination',
    type: 'bullets',
  },
});
;}


export {swipe};
