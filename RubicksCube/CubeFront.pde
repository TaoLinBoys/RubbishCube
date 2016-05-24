void front(){
  Scanner frontRed = new Scanner("front.txt");
  
  
  translate(0,0,150);
  
  translate(-100,-100,0);//topleft
  fillIn(0);
  box(100,100,1);
  
  translate(100,0,0);//topcenter
  fillIn(0);
  box(100,100,1);
  
  translate(100,0,0);//topright
  fillIn(0);
  box(100,100,1);
  
  translate(-200,100,0);//middleleft
  fillIn(0);
  box(100,100,1);
  
  translate(100,0,0);//middlecenter
  fillIn(0);
  box(100,100,1);
  
  translate(100,0,0);//middleright
  fillIn(0);
  box(100,100,1);
  
  translate(-200,100,0);//lowerleft
  fillIn(0);
  box(100,100,1);
  
  translate(100,0,0);//lowercenter
  fillIn(0);
  box(100,100,1);
  
  translate(100,0,0);//lowerright
  fillIn(0);
  box(100,100,1);
  
  translate(-100,-100,0); //reset
  
  frontRed.close();
}