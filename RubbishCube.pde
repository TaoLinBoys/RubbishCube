//USE V3.0.2
import java.util.*;

float rotx = 0;
float roty = 0;
int closestFace;
boolean circleOver;
float frontX, frontY, frontZ, 
      rightX, rightY, rightZ, 
      leftX, leftY, leftZ, 
      backX, backY, backZ, 
      downX, downY, downZ, 
      topX, topY, topZ;


Cube Rubbish = new Cube();
String ans = "";

void setup(){
  size(800,750,P3D);
  background(255,235,215);
}

void draw(){
  
  updateClosest();
  
  lights();
  background(255,235,215);
  
  //PUT DOT ON CENTER OF FACE AND THEN WHICH DOT HAS BIGGEST Z VALUE U TURN
  pushMatrix();
  translate(width/2.0,height/2.0,0);
  rotateX(rotx);
  rotateY(roty);
  strokeWeight(5);  
  front(); // red center 
  back();  // green
  right(); // blue
  left();  // white
  bottom();// yellow
  top();   // orange
  popMatrix();
  
  pushMatrix();
  strokeWeight(5);
  fill(255,213,253,255);
  rect(width/2-70,height-80,60,60);
  fill(255,213,150,255);
  rect(width/2+10,height-80,60,60);
  popMatrix();
  
  pushMatrix();
  
  fill(135,206,250);
  //front buttons
  rect(50,50,50,50);
  rect(100,50,50,50);
  
  //right buttons
  rect(50,150,50,50);
  rect(100,150,50,50);
  
  //left buttons
  rect(50,250,50,50);
  rect(100,250,50,50);
  
  //top
  rect(50,350,50,50);
  rect(100,350,50,50);
  
  //back
  rect(50,450,50,50);
  rect(100,450,50,50);
  
  //down
  rect(50,550,50,50);
  rect(100,550,50,50);
  
  //SCRAMBLE
  fill(175);
  rect(300,50,50,50);
  
  //SOLUTION
  rect(400,50,50,50);
  text(ans,400,150);
  
  fill(0);
  text("CCW",40,30);
  text("CW",90,30);
  
  text("Front",50,40);
  text("Right",50,140);
  text("Left",50,240);
  text("Top",50,340);
  text("Back",50,440);
  text("Down",50,540);
  
  text("scramble",300,30);
  
  text("front z value  "+frontZ, 600,100);
  text("right z value  "+rightZ, 600,130);
  text("left z value  "+leftZ, 600,160);
  text("back z value  "+backZ, 600,190);
  text("top z value  "+topZ, 600,210);
  text("down z value  "+downZ, 600,240);
  popMatrix();
  
  
}

float distTo(float x, float y, float z){
  double sqrX = x*x;
  double sqrY = y*y;
  double sqrZ = z*z;
  return (float)Math.sqrt( (100-sqrX) + (100-sqrY) + (100000-sqrZ) );
}



void updateClosest(){
  float biggest = frontZ;
  closestFace = 0;
  if(rightZ > biggest){
    biggest = rightZ;
    closestFace = 1;
  }
  if(leftZ > biggest){
    biggest = leftZ;
    closestFace = 2;
  }
  if(backZ > biggest){
    biggest = backZ;
    closestFace = 5;
  }
  if(topZ > biggest){
    biggest = topZ;
    closestFace = 4;
  }
  if(downZ > biggest){
    biggest = downZ;
    closestFace = 3;
  }
}

void rotateClosest(boolean CW){
  if(closestFace == 0){
    Rubbish.rotateF(CW);
  }
  if(closestFace == 1){
    Rubbish.rotateR(CW);
  }
  if(closestFace == 2){
    Rubbish.rotateL(CW);
  }
  if(closestFace == 3){
    Rubbish.rotateD(CW);
  }
  if(closestFace == 4){
    Rubbish.rotateT(CW);
  }
  if(closestFace == 5){
    Rubbish.rotateB(CW);
  }
}

boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

void mouseDragged(){
  float rate = 0.01;
  rotx += (pmouseY - mouseY) * rate;
  roty += (mouseX - pmouseX) * rate;
}