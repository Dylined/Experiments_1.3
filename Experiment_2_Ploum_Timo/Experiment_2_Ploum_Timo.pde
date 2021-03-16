
void setup() {
  size(640, 360); 
  background(50);
}  
void draw() {  

}
void mouseDragged() { 
  fill(150);
  strokeWeight(2);
  stroke(255); 
  line(pmouseX,pmouseY,mouseX,mouseY);
} 
void keyPressed() { 
  background(random(255),random(255),random(255)); 
} 
 
