void setup(){
  size(800,600,P3D);
  background(0);
  
  translate(400,300,0);
  fill(204);
  noStroke();
  rotateX(PI/4);  
  
  
  box(200);
}

float rotx = PI/4;
float roty = PI/4;

void draw(){
  lights();
  background(0);
  setPerspective();
  
  translate(400,300,0);
  fill(204);
  noStroke();
  rotateX(rotx);
  rotateY(roty);
  //setRotations();
  box(200);

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