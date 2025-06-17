
var snowX = [100, 160, 220, 280, 340];
var snowY = [50, 80, 60, 40, 90];
var snowEmoji = ["❄", "❅", "❆", "❄", "❅"];

setup = function() {
  size(600, 450);
  background(164, 212, 255);
  textSize(40);
  
  
  for (var i = 0; i < snowX.length; i++) {
    text(snowEmoji[i], snowX[i], snowY[i]);
  }


  fill(255, 255, 255);
  rect(-10, 300, 620, 160);
  
  
  var treeX = [50, 150, 250, 350, 450];
  for (var i = 0; i < treeX.length; i++) {
    fill(101, 67, 33); // brown trunk
    rect(treeX[i], 300, 20, 60);
    fill(0, 100, 0);   // green top
    triangle(treeX[i] - 20, 300, treeX[i] + 10, 250, treeX[i] + 40, 300);
  }
};


keyPressed = function() {
  var x = random(20, 580);
  var y = random(20, 300);
  text("❄", x, y);
};