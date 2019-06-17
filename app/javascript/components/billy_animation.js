const billyAnimation = () => {
  var billy = document.getElementById('billy')
  var bottom = document.getElementById('bottom')
  var topx = document.getElementById('topx')

  var    wholeShelf1 = document.getElementById('wholeShelf1')
  var    shelf1 = document.getElementById('shelf1')
  var    botFrontPeg = document.getElementById('botFrontPeg')
   var   botBackPeg = document.getElementById('botBackPeg')
   var   frontPeg = document.getElementById('frontPeg')
   var   backPeg = document.getElementById('backPeg')

  var    wholeShelf2 = document.getElementById('wholeShelf2')
  var    shelf2 = document.getElementById('shelf2')
  var    botFrontPeg2 = document.getElementById('botFrontPeg-2')
  var    botBackPeg2 = document.getElementById('botBackPeg-2')
  var    frontPeg2 = document.getElementById('frontPeg-2')
  var    backPeg2 = document.getElementById('backPeg-2')

  var    wholeShelf3 = document.getElementById('wholeShelf3')
  var    shelf3 = document.getElementById('shelf3')
  var    botFrontPeg3 = document.getElementById('botFrontPeg-3')
  var    botBackPeg3 = document.getElementById('botBackPeg-3')
  var    frontPeg3 = document.getElementById('frontPeg-3')
  var    backPeg3 = document.getElementById('backPeg-3')

  var tl = new TimelineMax()

  tl.set([bottom, topx], {opacity:0})
  // tl.set(frontPeg, {y:-28, x:-39})
  // tl.set(backPeg, {y:-30, x:-40})
  // tl.set(botFrontPeg, {y:-50, x:-40})
  // tl.set(botBackPeg, {y:-52, x:-32})
  // tl.set(topx, {opacity:0})


    // .from(botFrontPeg,.25, {y:-500, ease:Power2.easeOut})
    // .from(botBackPeg,.25, {y:-500, ease:Power2.easeOut})
    .from(shelf1,.5, {y:-500, ease:Power2.easeOut})
    .from(shelf2,.5, {y:-500, ease:Power2.easeOut})
    .from(shelf3,.5, {y:-500, ease:Power2.easeOut})

  .add("shelfzoom")

    .to(wholeShelf1,.5, {scale:3, x:-220, y:0, ease:Power2.easeOut},"shelfzoom")
    .to(wholeShelf2,.5, {opacity:.5, ease:Power2.easeOut},"shelfzoom")
    .to(wholeShelf3,.5, {opacity:.5, ease:Power2.easeOut},"shelfzoom")


  //   .to(billy, 1.0, {attr: {viewBox: '384 0 209.17 157.51' }, ease:Linear.easeNone})

    .from(frontPeg,.5, {y:-96, opacity:0, ease:Power2.easeOut})
    .from(backPeg,.5, {y:-96, opacity:0, ease:Power2.easeOut})
    .to(frontPeg,.5, {scaleY:.5, transformOrigin:"bottom center", ease:Power2.easeIn})

    .to(backPeg,.5, {scaleY:.5, transformOrigin:"bottom center", ease:Power2.easeIn})

    .to(wholeShelf1,.5, {scale:1, x:0, y:0, ease:Power2.easeOut})

    .to(wholeShelf2,.5, {opacity:1, ease:Power2.easeOut})
    .to(wholeShelf3,.5, {opacity:1, ease:Power2.easeOut})

    // .addPause()

  //   .to(billy, 1.0, {attr: {viewBox: '0 0 564 425' }, ease:Linear.easeNone})

    .from(botFrontPeg,.25, {y:500, ease:Power2.easeOut})
    .to(botFrontPeg,.25, {scaleY:.5, transformOrigin:"top center", ease:Power2.easeIn})
    .from(botBackPeg,.25, {y:500, ease:Power2.easeOut})
    .to(botBackPeg,.25, {scaleY:.5, transformOrigin:"top center", ease:Power2.easeIn})


    .from(frontPeg2,.25, {y:-500, ease:Power2.easeOut})
    .to(frontPeg2,.25, {scaleY:.5, transformOrigin:"bottom center", ease:Power2.easeIn})
    .from(backPeg2,.25, {y:-500, ease:Power2.easeOut},"-=.5")
    .to(backPeg2,.25, {scaleY:.5, transformOrigin:"bottom center", ease:Power2.easeIn})
    .from(botFrontPeg2,.25, {y:500, ease:Power2.easeOut},"-=.5")
    .to(botFrontPeg2,.25, {scaleY:.5, transformOrigin:"top center", ease:Power2.easeIn})
    .from(botBackPeg2,.25, {y:500, ease:Power2.easeOut},"-=.5")
    .to(botBackPeg2,.25, {scaleY:.5, transformOrigin:"top center", ease:Power2.easeIn})

    .from(frontPeg3,.25, {y:-500, ease:Power2.easeOut})
    .to(frontPeg3,.25, {scaleY:.5, transformOrigin:"bottom center", ease:Power2.easeIn})
    .from(backPeg3,.25, {y:-500, ease:Power2.easeOut})
    .to(backPeg3,.25, {scaleY:.5, transformOrigin:"bottom center", ease:Power2.easeIn})
    .from(botFrontPeg3,.25, {y:500, ease:Power2.easeOut})
    .to(botFrontPeg3,.25, {scaleY:.5, transformOrigin:"top center", ease:Power2.easeIn})
    .from(botBackPeg3,.25, {y:500, ease:Power2.easeOut})
    .to(botBackPeg3,.25, {scaleY:.5, transformOrigin:"top center", ease:Power2.easeIn})

  // console.log(botFrontPeg2)
    .add("bottomup")

     .to(bottom, .5, {opacity:1, y:-24, ease:Power2.easeIn},"bottomup")

     .to(botFrontPeg,.5, {scaleY:.0, transformOrigin:"top center", ease:Power2.easeIn},"bottomup")
     .to(botBackPeg,.5, {scaleY:.0, transformOrigin:"top center", ease:Power2.easeIn},"bottomup")
     .to(botFrontPeg2,.5, {scaleY:.0, transformOrigin:"top center", ease:Power2.easeIn},"bottomup")
     .to(botBackPeg2,.5, {scaleY:.0, transformOrigin:"top center", ease:Power2.easeIn},"bottomup")
     .to(botFrontPeg3,.5, {scaleY:.0, transformOrigin:"top center", ease:Power2.easeIn},"bottomup")
     .to(botBackPeg3,.5, {scaleY:.0, transformOrigin:"top center", ease:Power2.easeIn},"bottomup")


  .to(topx, .5, {opacity:1, y:58, ease:Power2.easeIn})
};

export {billyAnimation};
