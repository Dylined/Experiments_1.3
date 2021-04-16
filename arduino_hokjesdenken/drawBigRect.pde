class drawBigRect { 
 

void draw() {  

//loop voor snelheid drawen rectangles
  for(int i = 0; i < speedRectDraw; i++) {
  rectX = random(192,576); 
  rectY = random(216,540);
  rectX1 = random(576,960); 
  rectY1 = random(324,648);
  rectX2 = random(960,1344); 
  rectY2 = random(432,756);
  rectX3 = random(1344,1728); 
  rectY3 = random(540,864);

rectX = rectX + location;

    if (rectX > widthStart || rectX < widthEnd) {
      location = -location;
    }
  noStroke();
  fill(0);
  rect(rectX,rectY,rectSize,rectSize);
  rect(rectX1,rectY1,rectSize,rectSize);
  rect(rectX2,rectY2,rectSize,rectSize);
  rect(rectX3,rectY3,rectSize,rectSize);

}
} 
} 
