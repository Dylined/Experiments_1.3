//route 

//Snelheid hokjes draw 
int rectDraw = 2000;

//rectSize 
float rectSize = 0.1; 
float rectSideSize = 0.2;

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
  for (int i = 0; i  < rectDraw; i++) { 
    //draw objecten met de mouseY positie
    if ((mouseY > 100) && (mouseY < 200)) {  
      rectX = random(768, 1152); 
      rectY = random(108, 972); 
      noStroke(); 
      fill(0); 
      rect(rectX, rectY, rectSideSize, rectSideSize);
    } else if ((mouseY > 200) && (mouseY < 400)) { 
      rectX = random(384, 768); 
      rectY = random(540, 972);
      noStroke(); 
      fill(0); 
      rect(rectX, rectY, rectSize, rectSize);
    } else if ((mouseY > 400) && (mouseY < 600)) {
      rectX = random(1152, 1536); 
      rectY = random(108, 540);
      noStroke(); 
      fill(0); 
      rect(rectX, rectY, rectSize, rectSize);
    } else if ((mouseY > 600) && (mouseY < 800)) { 
      rectX = random(192, 384); 
      rectY = random(864, 972);
      noStroke(); 
      fill(0); 
      rect(rectX, rectY, rectSize, rectSize);
    } else if ((mouseY > 800) && (mouseY < 900)) {
      rectX = random(1536, 1728); 
      rectY = random(108, 216);  
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
