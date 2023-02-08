float leng = 1;
boolean stopLoop = true;
float rot = 1;
color c = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
public void setup()
{
  size(1000, 1000);
  frameRate(10);
  background(0);
}
public void draw()
{
  if (leng <= 5 && stopLoop == false)
  {
    leng = leng + 0.5;
    rot+=PI/4;
  } 
  else if (leng >= 5)
  {
    leng = -leng;
    //leng = 1;
    //rot = - rot;
  }
  translate(500, 375);
  rotate(-PI/2.0);
  sierpinski(0, 0, leng);
  rotate(2*PI/5.0 * rot);
  sierpinski(0, 0, leng);
  rotate(2*PI/5.0 * rot);
  sierpinski(0, 0, leng);
  rotate(2*PI/5.0 * rot);
  sierpinski(0, 0, leng);
  rotate(2*PI/5.0 * rot);
  sierpinski(0, 0, leng);
  loop();
}
public void mouseClicked()//optional
{
  stopLoop = true;
}
public void keyPressed() {
  c = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  if (key == ' ' && stopLoop == true) {
    stopLoop = false;
  }
  //if(key == 'x'){
  //  fill(0);
  //  stroke(0);
  //  translate(0,0);
  //  rotate(PI);
  //  rect(0,0,1000,1000);
  //}
  leng = -leng;
  //rot = - rot;
  //stopLoop = true;
}
public int increment(int increase) {
  increase+=10;
  return increase;
}
public void sierpinski(float x, float y, float len) 
{
  //draw a triangle
  //triangle(x,y,x+len/2,y-len,x+len,y);
  //fill(c, (int)(Math.random()*255), (int)(Math.random()*255));
  scaleShape1(x, y, len);
  if (len>10)
  {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/8, len/4);
    sierpinski(x+len/2, y-len/8, len/4);
    sierpinski(x+len/4, y+len/8, len/4);
    sierpinski(x+len/2, y+len/8, len/4);
  }
}
public void scaleShape1(float curveX, float curveY, float len) {
  beginShape();
  //left
  curveVertex(50*len+curveX, 0+curveY);
  curveVertex(50*len+curveX, 0+curveY);
  curveVertex(25*len+curveX, 25*len+curveY);
  curveVertex(0+curveX, 50*len+curveY);
  curveVertex(25*len+curveX, 75*len+curveY);
  curveVertex(35*len+curveX, 65*len+curveY);
  curveVertex(40*len+curveX, 80*len+curveY);
  //middle
  curveVertex(50*len+curveX, 100*len+curveY);
  //right
  curveVertex(60*len+curveX, 80*len+curveY);
  curveVertex(65*len+curveX, 65*len+curveY);
  curveVertex(75*len+curveX, 75*len+curveY);
  curveVertex(100*len+curveX, 50*len+curveY);
  curveVertex(75*len+curveX, 25*len+curveY);
  curveVertex(50*len+curveX, 0+curveY);
  curveVertex(50*len+curveX, 0+curveY);
  endShape();
  int gradientMove = 0;
  float count = 0;
  float r = 0;
  while (count < 28) {
    noFill();
    stroke(r, 0, 0);
    //left
    beginShape();
    curveVertex(50*len+curveX+gradientMove, curveY+gradientMove);
    curveVertex(50*len+curveX+gradientMove, curveY+gradientMove);
    curveVertex(25*len+curveX+gradientMove, curveY+25*len);
    curveVertex(curveX+gradientMove, 50);
    curveVertex(25*len+curveX+gradientMove, 75*len+curveY-gradientMove);
    curveVertex(35*len+curveX+gradientMove, 65*len+curveY-gradientMove);
    curveVertex(40*len+curveX+gradientMove, 80*len+curveY-gradientMove);
    //middle
    curveVertex(50*len+curveX, 100*len+curveY-gradientMove);
    //right
    curveVertex(60*len+curveX-gradientMove, 80*len+curveY-gradientMove);
    curveVertex(65*len+curveX-gradientMove, 65*len+curveY-gradientMove);
    curveVertex(75*len+curveX-gradientMove, 75*len+curveY-gradientMove);
    curveVertex(100*len+curveX-gradientMove, 50*len+curveY);
    curveVertex(75*len+curveX-gradientMove, 25*len+curveY);
    curveVertex(50*len+curveX-gradientMove, curveY+gradientMove);
    curveVertex(50*len+curveX-gradientMove, curveY+gradientMove);
    endShape();
    r+=255/30.0; 
    gradientMove++;
    count++;
  }
}
