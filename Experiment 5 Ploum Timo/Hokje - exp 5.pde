float rectX; 
float rectY;
float lineStart; 
float lineEnd; 

void setup() { 
  size(1000, 1000);
   background(255);
}  

void draw() {  
  for (float i = 0; i < 50; i++) {
    if ((mouseX > 200) && (mouseX < 800)) { 
      rectX = random(200, 800); 
      rectY = random(200, 800);
      fill(0); 
      rect(rectX, rectY, 2, 2);
    } else if ((mouseX > 0) && (mouseX < 200)) { 
      lineStart = random(0, 1000); 
      lineEnd = random(0, 1000);
      stroke(0); 
      strokeWeight(1);
      line(lineStart, lineEnd, lineStart, lineEnd);

  } else { 
     
  } 
} 
}
void mousePressed() { 
  background(255); 
}  
