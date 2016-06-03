void front(){
  if(closestFace == 0){
    stroke(255,192,203);
  }else{
    stroke(0);
  }
  
  
  translate(0,0,150);
  
  translate(-100,-100,0);//topleft
  fillIn(Rubbish.cube[0][0][0]);
  box(100,100,1);
  
  translate(100,0,0);//topcenter
  fillIn(Rubbish.cube[0][0][1]);
  box(100,100,1);
  
  translate(100,0,0);//topright
  fillIn(Rubbish.cube[0][0][2]);
  box(100,100,1);
  
  translate(-200,100,0);//middleleft
  fillIn(Rubbish.cube[0][1][0]);
  box(100,100,1);
  
  translate(100,0,0);//middlecenter
  fillIn(Rubbish.cube[0][1][1]);
  box(100,100,1);
  frontZ = modelZ(100,0,0);
  
  translate(100,0,0);//middleright
  fillIn(Rubbish.cube[0][1][2]);
  box(100,100,1);
  
  translate(-200,100,0);//lowerleft
  fillIn(Rubbish.cube[0][2][0]);
  box(100,100,1);
  
  translate(100,0,0);//lowercenter
  fillIn(Rubbish.cube[0][2][1]);
  box(100,100,1);
  
  translate(100,0,0);//lowerright
  fillIn(Rubbish.cube[0][2][2]);
  box(100,100,1);
  
  translate(-100,-100,0); //reset
  
}