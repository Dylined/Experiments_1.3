import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
boolean ingedrukt = false; 
float x;
float y;


void setup() {
  size(1000,1000);
  background(255);
  println(Arduino.list());
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  
  arduino.pinMode(8, Arduino.INPUT); 
  arduino.pinMode(7, Arduino.INPUT); 
}

void draw() {

  println(arduino.digitalRead(8));
  
  if (arduino.digitalRead(8) == arduino.HIGH) {
  for(int i = 0; i < 50; i++) {  
    ingedrukt = true;
    x = random(200,800); 
    y = random(200,800); 
    fill(0); 
    rect(x,y,5,5);
 }
  if (arduino.digitalRead(8) == arduino.LOW) { 
   ingedrukt = false; 
} 
}
if (arduino.digitalRead(7) == arduino.HIGH) { 
  for(int i = 0; i < 50; i++) { 
  ingedrukt = true; 
  x = random(0,1000); 
  y = random(0,1000); 
  fill(0); 
  rect(x,y,2,2); 
}  
  if (arduino.digitalRead(7) == arduino.LOW) {
  ingedrukt = false; 
  }
} 
}
