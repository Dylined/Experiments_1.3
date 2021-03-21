float circleX; 
float circleY;
float lineStart; 
float lineEnd; 
void setup() { 
  size(1000, 1000);
   background(255);
}  

void draw() {  
  for (float i = 0; i < 50; i++) {
    if ((mouseX > 0) && (mouseX < 333)) { 
      circleX = random(0, 1000); 
      circleY = random(0, 1000);
      fill(0); 
      ellipse(circleX, circleY, 3, 3);
    } else if ((mouseX > 333) && (mouseX < 666)) { 
      lineStart = random(0, 1000); 
      lineEnd = random(0, 1000);
      stroke(0); 
      strokeWeight(3);
      line(lineStart, lineEnd, lineStart, lineEnd);
    } else if ((mouseX > 666) && (mouseX < 950)) {  
      circleX = random(0, 1000); 
      circleY = random(0, 1000);
      fill (0);
      rect(circleX, circleY, 3, 3,i);
    } else { 
     
  } 
} 
}
void mousePressed() { 
  background(255); 
}  
