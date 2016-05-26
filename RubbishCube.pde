//USE V3.0.2
import java.util.*;

float rotx = 0;
float roty = 0;
boolean circleOver;
Cube Rubbish = new Cube();

void setup(){
  size(800,800,P3D);
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
  
  fill(0);
  text("rotx",100,100);
  text(""+(PI/rotx)+"  *PI",135,100);
  
  text("roty",100,125);
  text(""+(PI/roty)+"  *PI",135,125);
  
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