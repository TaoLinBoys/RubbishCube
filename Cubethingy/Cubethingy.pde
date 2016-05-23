float rotx = 0;
float roty = 0;

void setup(){
  size(800,700,P3D);
  background(0);
}

void draw(){
  lights();
  background(0);
  
  
  translate(width/2.0,height/2.0,0);
  rotateX(rotx);
  rotateY(roty);
  fill(150);
  box(300);
  
  //red
  translate(0,0,150);
  fill(200,0,0);
  box(100,100,1);
  translate(-100,0,0);
  box(100,100,1);
  translate(0,100,0);
  box(100,100,1);
  translate(100,0,0);
  box(100,100,1);
  translate(100,0,0);
  box(100,100,1);
  translate(0,-100,0);
  box(100,100,1);
  translate(0,-100,0);
  box(100,100,1);
  translate(-100,0,0);
  box(100,100,1);
  translate(-100,0,0);
  box(100,100,1);
  translate(100,100,0);

  //green
  translate(0,0,-300);
  fill(0,200,0);
  box(100,100,1);
  translate(-100,0,0);
  box(100,100,1);
  translate(0,100,0);
  box(100,100,1);
  translate(100,0,0);
  box(100,100,1);
  translate(100,0,0);
  box(100,100,1);
  translate(0,-100,0);
  box(100,100,1);
  translate(0,-100,0);
  box(100,100,1);
  translate(-100,0,0);
  box(100,100,1);
  translate(-100,0,0);
  box(100,100,1);
  translate(100,100,0);
  
  translate(150,0,150);
  fill(0,0,200);
  box(1,100,100);
  translate(0,0,100);
  box(1,100,100);
  translate(0,-100,0);
  box(1,100,100);
  translate(0,0,-100);
  box(1,100,100);
  translate(0,0,-100);
  box(1,100,100);
  translate(0,100,0);
  box(1,100,100);
  translate(0,100,0);
  box(1,100,100);
  translate(0,0,100);
  box(1,100,100);
  translate(0,0,100);
  box(1,100,100);
  translate(0,-100,-100);
  
  translate(-300,0,0);
  fill(255,255,255);
  box(1,300,300);
  translate(0,0,100);
  box(1,100,100);
  translate(0,-100,0);
  box(1,100,100);
  translate(0,0,-100);
  box(1,100,100);
  translate(0,0,-100);
  box(1,100,100);
  translate(0,100,0);
  box(1,100,100);
  translate(0,100,0);
  box(1,100,100);
  translate(0,0,100);
  box(1,100,100);
  translate(0,0,100);
  box(1,100,100);
  translate(0,-100,-100);

  translate(150,150,0);
  fill(255,255,0);
  box(100,1,100);
  translate(0,0,100);
  box(100,1,100);
  translate(100,0,0);
  box(100,1,100);
  translate(0,0,-100);
  box(100,1,100);
  translate(0,0,-100);
  box(100,1,100);
  translate(-100,0,0);
  box(100,1,100);
  translate(-100,0,0);
  box(100,1,100);
  translate(0,0,100);
  box(100,1,100);
  translate(0,0,100);
  box(100,1,100);
  translate(100,0,-100);

  translate(0,-300,0);
  fill(255,69,0);
  box(300,1,300);
  translate(0,0,100);
  box(100,1,100);
  translate(100,0,0);
  box(100,1,100);
  translate(0,0,-100);
  box(100,1,100);
  translate(0,0,-100);
  box(100,1,100);
  translate(-100,0,0);
  box(100,1,100);
  translate(-100,0,0);
  box(100,1,100);
  translate(0,0,100);
  box(100,1,100);
  translate(0,0,100);
  box(100,1,100);
  translate(100,0,-100);
}


void mouseDragged(){
  float rate = 0.01;
  rotx += (pmouseY - mouseY) * rate;
  roty += (mouseX - pmouseX) * rate;
}