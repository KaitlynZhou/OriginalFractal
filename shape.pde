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
