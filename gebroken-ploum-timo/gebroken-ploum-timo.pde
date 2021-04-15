// Th end 
float x; 
float y;  
boolean done = false; 
void setup() { 
size(1000,1000); 
background(255);
}
void keyPressed() { 
if (key == 'r' || key == 'R') {
    done = !done; 
} 
} 
void mousePressed() { 
 background(255);  
}  

void draw() { 
for (int i = 0; i < 25; i++) { 
 if ((mouseY > 150) && (mouseY < 175)) { 
x = random(250,750); 
y = random(150,175); 
rect(x,y,0.1,0.1);
} else if ((mouseY > 200) && (mouseY < 250)) { 
x = random(200,800); 
y = random(200,250); 
rect(x,y,0.1,0.1);  
}else if ((mouseY > 275) && (mouseY < 375)) { 
x = random(150,850); 
y = random(275,375); 
rect(x,y,0.1,0.1);  
}else if ((mouseY > 400) && (mouseY < 500)) {  
x = random(100,900); 
y = random(400,500); 
rect(x,y,0.1,0.1);
}else if ((mouseY > 500) && (mouseY < 600)) {  
x = random(100,900); 
y = random(500,600); 
rect(x,y,0.1,0.1);
} else if ((mouseY > 625) && (mouseY < 725)) { 
x = random(150,850); 
y = random(625,725); 
rect(x,y,0.1,0.1);
} else if ((mouseY > 750) && (mouseY < 800)) { 
x = random(200,800); 
y = random(750,800); 
rect(x,y,0.1,0.1);  
}else if ((mouseY > 825) && (mouseY < 850)) { 
x = random(250,750); 
y = random(825,850); 
rect(x,y,0.1,0.1);    
} else { 
  
} 
}
if (done) { 
 saveFrame("output/a_####.png"); 
}
}
