class drawSmallRect { 
  void setup() { 
  background(255); 
  }  
  
  void draw() { 
//loop voor snelheid drawen rectangles
  for(int i = 0; i  <speedRectDraw; i++) {
  rectX = random(336,432); 
  rectY = random(135,189);
  rectX1 = random(720,816); 
  rectY1 = random(243,297);
  rectX2 = random(1104,1200); 
  rectY2 = random(351,405);
  rectX3 = random(1488,1584); 
  rectY3 = random(459,513);
  
  rectX = rectX + location;

    if (rectX > widthStart || rectX < widthEnd) {
      location = -location;
    }  
  
  
  noStroke(); 
  fill(0); 
  rect(rectX,rectY,smallRectSize,smallRectSize);
  rect(rectX1,rectY1,smallRectSize2,smallRectSize2);
  rect(rectX2,rectY2,smallRectSize3,smallRectSize3);
  rect(rectX3,rectY3,smallRectSize4,smallRectSize4);
  
  
  
  
}  
} 
}
