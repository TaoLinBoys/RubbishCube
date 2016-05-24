void back(){
  translate(0,0,-300);
  
  translate(-100,-100,0);//topleft
  fillIn(1);
  box(100,100,1);
  
  translate(100,0,0);//topcenter
  fillIn(1);
  box(100,100,1);
  
  translate(100,0,0);//topright
  fillIn(1);
  box(100,100,1);
  
  translate(-200,100,0);//middleleft
  fillIn(1);
  box(100,100,1);
  
  translate(100,0,0);//middlecenter
  fillIn(1);
  box(100,100,1);
  
  translate(100,0,0);//middleright
  fillIn(1);
  box(100,100,1);
  
  translate(-200,100,0);//lowerleft
  fillIn(1);
  box(100,100,1);
  
  translate(100,0,0);//lowercenter
  fillIn(1);
  box(100,100,1);
  
  translate(100,0,0);//lowerright
  fillIn(1)  ;
  box(100,100,1);
  
  translate(-100,-100,0); //reset
}