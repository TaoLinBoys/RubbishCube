//USE V3.0.2
import java.util.*;

float rotx = -PI/6;
float roty = -PI/4;
boolean circleOver;
Cube Rubbish = new Cube();

void setup(){
  size(800,800,P3D);
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
  
  strokeWeight(5);
  fill(255,213,253,255);
  rect(width/2-70,height-80,60,60);
  fill(255,213,150,255);
  rect(width/2+10,height-80,60,60);
  
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
  if(overRect(width/2-70,height-80,60,60)){
    Rubbish.rotateF(false);
  }else if(overRect(width/2+10,height-80,60,60)){
    Rubbish.rotateF(true);
  }
}

void mouseDragged(){
  float rate = 0.01;
  rotx += (pmouseY - mouseY) * rate;
  roty += (mouseX - pmouseX) * rate;
}