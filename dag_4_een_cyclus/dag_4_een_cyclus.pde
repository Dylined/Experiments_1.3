//Een cyclus 

//snelheid hokjes draw 
int rectDraw = 100; 

//rectSize 
float rectSize = 0.25; 
float rectCenterSize = 0.5;
//variabelen
float x; 
float y; 
float x1; 
float y1; 
float x2; 
float y2;

//boolean save image
boolean done = false; 

void setup() { 
  size(1920, 1080); 
  background(255);
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
      x = random(192, 384); 
      y = random(432, 540); 
      x1 = random(1536, 1728); 
      y1 = random(864, 972);
      x2 = random(192, 384); 
      y2 = random(108, 216);
      fill(0);
      noStroke();
      rect(x, y, rectSize, rectSize);
      rect(x1, y1, rectSize, rectSize);  
      rect(x2, y2, rectSize, rectSize); 
    } else if ((mouseY > 300) && (mouseY < 500)) { 
      x = random(768, 1152); 
      y = random(432, 648); 
      x1 = random(1344, 1728); 
      y1 = random(108, 324); 
      x2 =random(192, 576); 
      y2 =random(756, 972);
      fill(0); 
      noStroke();
      rect(x, y, rectCenterSize, rectCenterSize);
      rect(x1, y1, rectSize, rectSize);
      rect(x2, y2, rectSize, rectSize);
    } else if ((mouseY > 500) && (mouseY < 700)) {
      x = random(576, 768); 
      y = random(648, 756);
      x1 = random(1152, 1344); 
      y1 = random(324, 432);
      fill(0);
      noStroke();
      rect(x, y, rectSize, rectSize);
      rect(x1, y1, rectSize, rectSize);
    } else if ((mouseY > 700) && (mouseY < 900)) {
      x = random(1536, 1728);
      y = random(540, 648);
      x1 = random(960, 1152); 
      y1 = random(864, 972);
      x2 = random(768, 960); 
      y2 = random(108, 216); 
      fill(0);
      noStroke();
      rect(x, y, rectSize, rectSize);
      rect(x1, y1, rectSize,rectSize);  
      rect(x2, y2, rectSize, rectSize);
    }
  }
    //save img in de output map
    if (done) { 
      saveFrame("output/a_####.png");
    }
  }
