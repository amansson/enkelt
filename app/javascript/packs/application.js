import "bootstrap";

import {searchform} from "../components/searchform.js";
searchform();

import {warningtext} from "../components/warningtext.js";
warningtext();

import {showvideo} from "../components/showvideo.js";
showvideo();

import {showscrew} from "../components/showscrew.js";
showscrew();

import {buttonAnimation} from "../components/button.js";
buttonAnimation();

//import {billyAnimation} from "../components/billy_animation.js";
//billyAnimation();

$(".remove").click(function(){
  $(this).removeClass("bg-white text-danger")
  $(this).addClass("bg-success text-white")
  $(this).parent().parent().delay(300)
  $(this).parent().parent().slideUp(200)
});

  // let btns = document.querySelectorAll(".remove");
  // btns.forEach(function(btn) {
  //   btn.addEventListener("click", function(event){
  //     //console.log(event.currentTarget);
  //     btn.parentNode.parentNode.remove();
  //   });
  // })
