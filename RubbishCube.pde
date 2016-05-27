//USE V3.0.2
import java.util.*;

float rotx = 0;
float roty = 0;
boolean circleOver;
Cube Rubbish = new Cube();

void setup(){
  size(800,750,P3D);
  background(255,235,215);
}

void draw(){
  
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
  popMatrix();
  
  
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