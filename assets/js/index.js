window.addEventListener("mousemove", function (e) {
  var w = document.documentElement.getBoundingClientRect().width
  var h = document.documentElement.getBoundingClientRect().height
  var moveX = ((e.pageX - w / 2) / (w / 2)).toFixed(2);
  var moveY = ((e.pageY - h / 2) / (h / 2)).toFixed(2);
  document.querySelector(":root").style = "--moveX: " + moveX + "; --moveY: " + moveY + ";"
})
