//USE V3.0.2
import java.util.*;

float rotx = 0;
float roty = 0;

void setup(){
  size(800,700,P3D);
  background(0);
}

void draw(){
  lights();
  background(255,235,215);
  
  
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
  
}


void mouseDragged(){
  float rate = 0.01;
  rotx += (pmouseY - mouseY) * rate;
  roty += (mouseX - pmouseX) * rate;
}