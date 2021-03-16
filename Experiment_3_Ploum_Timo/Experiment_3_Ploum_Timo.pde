float circleX;
float circleY; 
float r;  
float g; 
float b; 

void setup() { 
  size(640, 360);   
  background(50); 
} 


void draw() { 
  noStroke();
  circleX = random(width);
  circleY = random(height);  
  r = (random(0,255));  
  g = (random(0,255)); 
  b = (random(0,255)); 
  fill(r,g,b); 
  ellipse(circleX,circleY,random(10,20),random(10,20)); 
  
  circleX = circleX + random(-2,2); 
}   

void keyPressed() { 
   background(r,g,b); 
  
}  

void mouseDragged() { 
  strokeWeight(10);
  stroke(r,g,b);  
  line(pmouseX,pmouseY,mouseX,mouseY);  
  
}  
