//in balans 'maar niet heus' 

//Snelheid hokjes draw 
int rectDraw = 500;

//rectSize  
float rectSize = 0.1; 
float rectCubesSize = 0.2;

//variabelen
float rectX;
float rectY; 
float rectX1;
float rectY1;

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
    if ((mouseY > 100) && (mouseY < 300)) {  
      rectX = random(192, 1728); 
      rectY = random(648, 702); 
      noStroke(); 
      fill(0); 
      rect(rectX, rectY, rectSize, rectSize);
    } else if ((mouseY > 300) && (mouseY < 500)) { 
      rectX = random(240, 336); 
      rectY = random(702, 756); 
      rectX1 = random(912, 1008); 
      rectY1 = random(702, 756);   
      noStroke(); 
      fill(0); 
      rect(rectX, rectY, rectSize, rectSize);  
      rect(rectX1, rectY1, rectSize, rectSize);
    } else if ((mouseY > 500) && (mouseY < 700)) { 
      rectX = random(192, 576); 
      rectY = random(324, 648);    
      noStroke(); 
      fill(0); 
      rect(rectX, rectY, rectCubesSize, rectCubesSize);
    } else if ((mouseX > 700) && (mouseX < 900)) { 
      rectX = random(1536, 1728); 
      rectY = random(540, 648);    
      noStroke(); 
      fill(0); 
      rect(rectX, rectY, rectCubesSize, rectCubesSize);
    } else {
    }
  }  
  //save img in de output map
  if (done) { 
    saveFrame("output/a_####.png");
  }
}  
