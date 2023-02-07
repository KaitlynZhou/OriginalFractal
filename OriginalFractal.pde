float leng = 50;
boolean stopLoop = true;
float rot = 1;
color c = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
public void setup()
{
  size(600, 600);
  //frameRate(20);
  background(0);
}
public void draw()
{
  if (leng <= 1000 && stopLoop == false)
  {
    leng = leng + 2.5;
  } else if (leng >= 1000)
  {
    leng = 50;
  }
  translate(300, 300);
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
  leng = -leng;
  rot = - rot;
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
  if (len>30)
  {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/8, len/4);
    sierpinski(x+len/2, y-len/8, len/4);
    sierpinski(x+len/4, y+len/8, len/4);
    sierpinski(x+len/2, y+len/8, len/4);
  }
}
