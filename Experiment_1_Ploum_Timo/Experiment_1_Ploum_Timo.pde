int circleX = mouseX;
int circleY = mouseY;
float r = random(255); 
float g = random(255); 
float b = random(255); 
void setup() { 
  size(640,360); 
  background(50); 
}   

void draw() { 
  fill(r,g,b);
} 

void mousePressed() { 
  r = random(255); 
  g = random(255); 
  b = random(255); 
  fill(r,g,b);
  ellipse(mouseX,mouseY,random(255),25);  

}  
void keyPressed() { 
  background(50); 
} 
  
  
