//USE V3.0.2
import java.util.*;

float rotx = 0;
float roty = 0;
boolean circleOver;
Cube Rubbish = new Cube();

void setup(){
  size(800,700,P3D);
  background(255,235,215);
}

void draw(){
  
  lights();
  background(255,235,215);
  
  
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
  
  fill(255,213,253,255);
  strokeWeight(5);
  rect(60,60,60,60);
  rect(60,120,60,60);
  
}


boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

void mousePressed(){
  if(overRect(60,60,60,60)){
    Rubbish.rotateF(false);
  }else if(overRect(60,120,60,60)){
    Rubbish.rotateF(true);
  }
}

void mouseDragged(){
  float rate = 0.01;
  rotx += (pmouseY - mouseY) * rate;
  roty += (mouseX - pmouseX) * rate;
}