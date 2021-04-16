
//vermoeidheid

//Snelheid hokjes draw 
int rectDraw = 500;

//rectSize 
float rectSize = 0.2;
float rectFadeSize = 0.1; 
float rectFadeSize1 = 0.125;
float rectFadeSize2 = 0.15;
float rectFadeSize3 = 0.175;

//variabelen
float rectX;
float rectY;
boolean done = false; 


void setup() { 
  background(255); 
  size(1920, 1080);
} 
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
  for (int i = 0; i  < rectDraw; i++) { 
    //draw objecten met de mouseY positie
    if ((mouseY > 100) && (mouseY < 200)) { 
      rectX = random(192, 576); 
      rectY = random(216, 540);
      noStroke(); 
      fill(0); 
      rect(rectX, rectY, rectSize, rectSize);
    } else if ((mouseY > 200) && (mouseY < 300)) { 
      rectX = random(576, 960); 
      rectY = random(324, 648);
      noStroke(); 
      fill(0); 
      rect(rectX, rectY, rectSize, rectSize);
    } else if ((mouseY > 300) && (mouseY < 400)) {
      rectX = random(960, 1344); 
      rectY = random(432, 756);
      rect(rectX, rectY, rectSize, rectSize);
    } else if ((mouseY > 400) && (mouseY < 500)) {
      rectX = random(1344, 1728); 
      rectY = random(540, 864);
      rect(rectX, rectY, rectSize, rectSize);
    } else if ((mouseY > 500) && (mouseY < 600)) {
      rectX = random(336, 432); 
      rectY = random(135, 189);
      rect(rectX, rectY, rectFadeSize, rectFadeSize);
    } else if ((mouseY > 600) && (mouseY < 700)) {
      rectX = random(720, 816); 
      rectY = random(243, 297);
      rect(rectX, rectY, rectFadeSize1, rectFadeSize1);
    } else if ((mouseY > 700) && (mouseY < 800)) {
      rectX = random(1104, 1200); 
      rectY = random(351, 405);
      rect(rectX, rectY, rectFadeSize2, rectFadeSize2);
    } else if ((mouseY > 800) && (mouseY < 900)) { 
      rectX = random(1488, 1584); 
      rectY = random(459, 513);
      rect(rectX, rectY, rectFadeSize3, rectFadeSize3);
    }
  }    
  //save img in de output map
  if (done) { 
    saveFrame("output/a_####.png");
  }
}  
