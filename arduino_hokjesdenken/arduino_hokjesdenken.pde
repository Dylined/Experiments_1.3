//eindwerk 1.3 MMT Timo Ploum

//arduino inladen
import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
//variabelen rectSize aanpassen 
float rectSize = 0.2;
float smallRectSize = 0.1; 
float smallRectSize2 = 0.125; 
float smallRectSize3 = 0.15;
float smallRectSize4 = 0.175;
//variabelen snelheid draw van de hokjes
int speedRectDraw = 1000;
//width rectdraw 
int widthStart = 0;
int widthEnd = 1920;
//
drawSmallRect A;
drawBigRect B;
//inladen images, array
PImage[] eindbeeld = new PImage[7];
boolean ingedrukt = false;
boolean done = false;  
//objecten variabelen
float rectX; 
float rectY; 
float rectX1;
float rectY1;
float rectX2;
float rectY2; 
float rectX3;
float rectY3;
int location = 1;

void setup() {
  size(1920, 1080);
  background(255);
  println(Arduino.list());
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  //classes
  A = new drawSmallRect(); 
  B = new drawBigRect(); 
  //ports
  arduino.pinMode(5, Arduino.INPUT); 
  arduino.pinMode(6, Arduino.INPUT); 
  arduino.pinMode(7, Arduino.INPUT); 
  arduino.pinMode(8, Arduino.INPUT);
}

void draw() {
  //button random eindwerken inladen met een array
  println(arduino.digitalRead(7));

  if (arduino.digitalRead(5) == arduino.HIGH) {
    ingedrukt = true;
    for (int i = 0; i < eindbeeld.length; i++) {
      int index = int(random(0, eindbeeld.length)); 
      eindbeeld[i] = loadImage("eindbeeld/eindbeeld"+index+".png");
      image(eindbeeld[i], 0, 0);

    }
}
  if (arduino.digitalRead(5) == arduino.LOW) { 
    ingedrukt = false;
  }
//button draw small rectangles
  if (arduino.digitalRead(6) == arduino.HIGH) { 
    ingedrukt = true;
    A.draw();  
}  
  if (arduino.digitalRead(6) == arduino.LOW) {
    ingedrukt = false;
  }
//button draw big rectangles
  if (arduino.digitalRead(7) == arduino.HIGH) { 
    ingedrukt = true;
    B.draw();  
} 
  if (arduino.digitalRead(7) == arduino.LOW) { 
    ingedrukt = false;
  }
//save frame
  if (arduino.digitalRead(8) == arduino.HIGH) { 
    ingedrukt = true;
    done = !done; 
} 
//niet ingedrukt is het frame niet opslaan
  if (arduino.digitalRead(8) == arduino.LOW) { 
    ingedrukt = false; 
     done = false;
}
//saves frame en resets de background 
if (done) { 
 saveFrame("output/a_####.png"); 
  background(255);
}
} 
