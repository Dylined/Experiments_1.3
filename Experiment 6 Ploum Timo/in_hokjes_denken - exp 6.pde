float rectX;
float rectY;
float circleX; 
float circleY;

void setup() {
  background(255); 
  size(1000, 1000);
}

void draw() { 
  for (int i = 0; i < 50; i++) { 
    if ((mouseX > 200) && (mouseX < 350)) { 
      rectX = random(200, 350); 
      rectY = random(200, 500); 
      fill(0); 
      rect(rectX, rectY, 0.01, 0.01);
    } else if ((mouseX > 350) && (mouseX < 500)) { 
      circleX = random(350, 500); 
      circleY = random(200, 500); 
      fill(0); 
      ellipse(circleX, circleY, 0.01, 0.01);
    } else if ((mouseX > 500) &&(mouseX < 650)) { 
      rectX = random(500, 650); 
      rectY = random(200, 500);
      fill(0); 
      rect(rectX, rectY, 0.01, 0.01);
    } else if ((mouseX >650) &&(mouseX < 800)) { 
      rectX = random(650, 800); 
      rectY = random(200, 500); 
      fill(0); 
      rect(rectX, rectY, 0.01, 0.01);
    } else if ((mouseY >500) && (mouseY < 600)) { 
      rectX = random(200, 350); 
      rectY = random(500, 800); 
      fill(0); 
      rect(rectX, rectY, 0.01, 0.01);
    } else if ((mouseY >600) && (mouseY < 700)) { 
      rectX = random(350, 500); 
      rectY = random(500, 800); 
      fill(0); 
      rect(rectX, rectY, 0.01, 0.01);
    } else if ((mouseY >700) && (mouseY < 800)) { 
      rectX = random(500, 650); 
      rectY = random(500, 800); 
      fill(0); 
      rect(rectX, rectY, 0.01, 0.01);
    } else if ((mouseY >800) && (mouseY < 900)) { 
      rectX = random(650, 800); 
      rectY = random(500, 800); 
      fill(0); 
      ellipse(rectX, rectY, 0.01, 0.01);
    } else {
    }
  }
if (mousePressed) { 
   background(255); 
  
}  

}
