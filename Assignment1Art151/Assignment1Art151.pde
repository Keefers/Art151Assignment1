void setup() {
  size(displayWidth, displayHeight);
  rect(50, 50, displayWidth, displayHeight);
  background(random(255), random(255), random(255));
  // fill(random(255), random(255), random(255));
  textSize(50);
  text("Press l for random line, d for diagonal line, e for ellipse circle, r to reset board, or \nother keys for just points.", 10, 50);
}

void draw() {
    
  for (int i=0; i<2; i++) {
    stroke(random(255), random(255), random(255));
    strokeWeight(random(1, 8));
  }
  
    if (keyPressed) {
      keyPressed();
    }
    else if (mousePressed) {
      keyPressed();
    }
}

void keyPressed() {
  
  if (key == 'l') {
    line(mouseX, mouseY, random(15, displayWidth-200), random(15, displayHeight-200));
  }
  else if (key == 'd') {
     triangle(mouseX, mouseY, mouseX-25, mouseY-25, mouseX+25, mouseY+25);
  }
  else if (key == 'e') {
    ellipse(mouseX, mouseY, 30, 30);
  }
  else if (key == 'r') {
    background(random(255), random(255), random(255));
    textSize(50);
    text("Press l for random line, d for diagonal line, e for ellipse circle, r to reset board, or \nother keys for just points.", 10, 50);
  }
  // Default is points
  else {
    point(mouseX, mouseY);
  }
  
  
}
