//radeloos 

//snelheid hokjes draw 
int rectDraw = 10000;
//rectSize 
float rectSize = 0.2;
//variabelen
float rectX;
float rectY; 
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
  for (int i = 0; i  < 10000; i++) { 
    //draw objecten met de mouseY positie
    if ((mouseY > 200) && (mouseY < 800)) {  
      rectX = random(200, 1720); 
      rectY = random(200, 880); 
      noStroke(); 
      fill(0); 
      rect(rectX, rectY, rectSize, rectSize);
    }
  }
  //save img in de output map
  if (done) { 
    saveFrame("output/a_####.png");
  }
}  
