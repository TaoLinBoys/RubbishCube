int sizeOfBox = 200;

void setup(){
  size(800,600,P3D);
  background(0);
  
  translate(400,300,0);
  fill(204);
  noStroke();
  rotateX(PI/4);  
  
  
  box(sizeOfBox);
}

float rotx = 0;
float roty = 0;

void draw(){
  lights();
  background(0);
  setPerspective();
  
  pushMatrix();
  rotateX(rotx);
  rotateY(roty);
  fill(200,0,0);
  translate(width/2,height/2,-100);
  box(200,200,.000000000000001);
  
  popMatrix();

}


void mouseDragged(){
  float rate = 0.01;
  rotx += (pmouseY - mouseY) * rate;
  roty += (mouseX - pmouseX) * rate;
}

void setPerspective(){
  float cameraY = height/2.0;
  float fov = PI/2;
  float cameraZ = cameraY / tan(fov / 2.0);
  float aspect = float(width)/float(height);
  perspective(fov, aspect, cameraZ/10.0, cameraZ*10.0);
}