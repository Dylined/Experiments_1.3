//gesplitst 
//snelheid hokjes draw 
int rectDraw = 1000;
//rectSize
float rectSize = 0.2; 
float rectSmallSize = 0.1; 
//variabelen
float rectX;
float rectY;
float leftRectX; 
float leftRectY; 
float rightRectX; 
float rightRectY;
float leftLayingRectX; 
float leftLayingRectY; 
float rightLayingRectX; 
float rightLayingRectY;
float smallRectX; 
float smallRectY; 
float rightSmallRectX; 
float rightSmallRectY; 
//boolean save image
boolean done = false; 

void setup() {
  background(255); 
  size(1920, 1080);
}
//r || R pressed = save img
void keyPressed() { 
  if (key == 'r' || key == 'R') {
    done = !done;
  }
}
//resetsheet
void mousePressed() { 
  background(255);
} 
void draw() { 

  //loop snelheid drawing van de rectangles  
  for (int i = 0; i < rectDraw; i++) { 
   //draw objecten met de mouseY positie
    if ((mouseY > 100) && (mouseY < 300)) { 
      rectX = random(768, 1152); 
      rectY = random(108, 972);
      noStroke(); 
      fill(0); 
      rect(rectX, rectY, 0.2, 0.2);
    } else if ((mouseY > 300) && (mouseY < 600)) { 
      leftRectX = random(384, 576); 
      leftRectY = random(324, 972);
      rightRectX = random(1344, 1536);
      rightRectY = random(324, 972);
      leftLayingRectX = random(192, 576); 
      leftLayingRectY = random(108, 216);
      rightLayingRectX = random(1344, 1728); 
      rightLayingRectY = random(108, 216);
      noStroke(); 
      fill(0); 
      rect(leftRectX, leftRectY, rectSize, rectSize);  
      rect(rightRectX, rightRectY, rectSize, rectSize);
      rect(leftLayingRectX, leftLayingRectY, rectSmallSize, rectSmallSize);
      rect(rightLayingRectX, rightLayingRectY, rectSmallSize, rectSmallSize);
    } else if ((mouseY > 600) && (mouseY < 900)) { 
      smallRectX = random(624, 720);
      smallRectY = random(351, 405); 
      rightSmallRectX = random(1200, 1296); 
      rightSmallRectY = random(351, 405); 
      noStroke();
      fill(0);
      rect(smallRectX, smallRectY, rectSmallSize, rectSmallSize);
      rect(rightSmallRectX, rightSmallRectY, rectSmallSize, rectSmallSize);
    } else {
    }
  }
  if (done) { 
    saveFrame("output/a_####.png");
  }
} 
