float rectX; 
float rectY;
float lineStart;
float lineEnd;
void setup() { 
    size(1000,1000); 
    background(255); 
  
} 

void draw() {  
for(int i = 0; i < 50; i++) {
 if ((mouseY > 200) && (mouseY < 300)) { 
 rectX = random(200,800);
 rectY = random(200,300);
 fill(255); 
 rect(rectX,rectY,0.1,0.1);  
 } else if((mouseY > 300) && (mouseY < 400)) { 
   rectX = random(200,800);
   rectY = random(300,400);
   fill(255); 
   rect(rectX,rectY,0.1,0.1); 
 } else if ((mouseY > 400) && (mouseY < 500)) { 
       rectX = random(200,800);
       rectY = random(400,500);
       fill(255); 
       rect(rectX,rectY,0.1,0.1); 
 } else if ((mouseY > 500) && (mouseY < 600)) { 
       rectX = random(200,800);
       rectY = random(500,600);
       fill(255); 
       rect(rectX,rectY,0.1,0.1); 
 } else if ((mouseY > 600) && (mouseY < 700)) { 
       rectX = random(200,800);
       rectY = random(600,700);
       fill(255); 
       rect(rectX,rectY,0.1,0.1); 
 } else if ((mouseY > 700) && (mouseY < 800)) { 
       rectX = random(200,800);
       rectY = random(700,800);
       fill(255); 
       rect(rectX,rectY,0.1,0.1); 
} else if ((mouseY > 800) && (mouseY < 1000)) { 
      lineStart = random(0, 1000); 
      lineEnd = random(0, 1000);
      stroke(0); 
      strokeWeight(1);
      line(lineStart, lineEnd, lineStart, lineEnd);  
}
}
}  

void mousePressed() { 
   background(255); 
}
  
