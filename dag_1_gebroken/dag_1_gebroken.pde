// Gebroken 

//Snelheid hokjes draw 
int rectDraw = 1000;

//rectSize 
float rectSize = 0.1; 
float rectMiddleSize = 0.15;

//variabelen
float x; 
float y;  

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
    if ((mouseY > 100) && (mouseY < 200)) { 
      x = random(480, 1440); 
      y = random(162, 189); 
      noStroke(); 
      fill(0);
      rect(x, y, rectSize, rectSize);
    } else if ((mouseY > 200) && (mouseY < 300)) { 
      x = random(384, 1536); 
      y  = random(216, 270);   
      noStroke(); 
      fill(0);
      rect(x, y, rectSize, rectSize);
    } else if ((mouseY > 300) && (mouseY < 400)) {
      x = random(288, 1632); 
      y = random(297, 405);
      noStroke(); 
      fill(0);
      rect(x, y, rectSize, rectSize);
    } else if ((mouseY > 400) && (mouseY < 500)) { 
      x = random(192, 1728); 
      y= random(432, 540);  
      noStroke(); 
      fill(0);
      rect(x, y, rectMiddleSize, rectMiddleSize);
    } else if ((mouseY > 500) && (mouseY < 600)) { 
      x = random(192, 1728); 
      y = random(540, 648); 
      noStroke(); 
      fill(0);
      rect(x, y, rectMiddleSize, rectMiddleSize);
    } else if ((mouseY > 600) && (mouseY < 700)) {   
      x = random(288, 1632); 
      y = random(675, 783); 
      noStroke(); 
      fill(0);
      rect(x, y, rectSize, rectSize);
    } else if ((mouseY > 700) && (mouseY < 800)) {
      x = random(384, 1536); 
      y = random(810, 864);
      noStroke(); 
      fill(0);
      rect(x, y, rectSize, rectSize);
    } else if ((mouseY > 800) && (mouseY < 900)) { 
      x = random(480, 1440); 
      y = random(891, 918);
      noStroke(); 
      fill(0);
      rect(x, y, rectSize, rectSize);
    }
  }
  //save img in de output map
  if (done) { 
    saveFrame("output/a_####.png");
  }
}
