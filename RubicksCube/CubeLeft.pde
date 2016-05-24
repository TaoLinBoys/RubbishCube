void left(){
  translate(-300,0,0);
  
  translate(0,-100,100);//topleft
  fillIn(3);
  box(1,100,100);
  
  translate(0,0,-100);//topcenter
  fillIn(3);
  box(1,100,100);
  
  translate(0,0,-100);//topright
  fillIn(3);
  box(1,100,100);
  
  translate(0,100,200);//middleleft
  fillIn(3);
  box(1,100,100);
  
  translate(0,0,-100);//middlecenter
  fillIn(3);
  box(1,100,100);
  
  translate(0,0,-100);//middleright
  fillIn(3);
  box(1,100,100);
  
  translate(0,100,200);//lowerleft
  fillIn(3);
  box(1,100,100);
  
  translate(0,0,-100);//lowercenter
  fillIn(3);
  box(1,100,100);
  
  translate(0,0,-100);//lowerright
  fillIn(3);
  box(1,100,100);
  
  translate(0,-100,100);//reset
}