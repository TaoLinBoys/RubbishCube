void back(){
  translate(0,0,-300);
  
  translate(-100,-100,0);//topleft
  fillIn(Rubbish.cube[5][0][0]);
  box(100,100,1);
  
  translate(100,0,0);//topcenter
  fillIn(Rubbish.cube[5][0][1]);
  box(100,100,1);
  
  translate(100,0,0);//topright
  fillIn(Rubbish.cube[5][0][2]);
  box(100,100,1);
  
  translate(-200,100,0);//middleleft
  fillIn(Rubbish.cube[5][1][0]);
  box(100,100,1);
  
  translate(100,0,0);//middlecenter
  fillIn(Rubbish.cube[5][1][1]);
  box(100,100,1);
  
  translate(100,0,0);//middleright
  fillIn(Rubbish.cube[5][1][2]);
  box(100,100,1);
  
  translate(-200,100,0);//lowerleft
  fillIn(Rubbish.cube[5][2][0]);
  box(100,100,1);
  
  translate(100,0,0);//lowercenter
  fillIn(Rubbish.cube[5][2][1]);
  box(100,100,1);
  
  translate(100,0,0);//lowerright
  fillIn(Rubbish.cube[5][2][2]);
  box(100,100,1);
  
  translate(-100,-100,0); //reset
}