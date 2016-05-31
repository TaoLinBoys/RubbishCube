void right(){
  
  if(closestFace == 1){
    stroke(255,192,203);
  }else{
    stroke(0);
  }
  translate(150,0,150);
  
  translate(0,-100,100);//topleft
  fillIn(Rubbish.cube[1][0][0]);
  box(1,100,100);
  
  translate(0,0,-100);//topcenter
  fillIn(Rubbish.cube[1][0][1]);
  box(1,100,100);
  
  translate(0,0,-100);//topright
  fillIn(Rubbish.cube[1][0][2]);
  box(1,100,100);
  
  translate(0,100,200);//middleleft
  fillIn(Rubbish.cube[1][1][0]);
  box(1,100,100);
  
  translate(0,0,-100);//middlecenter
  fillIn(Rubbish.cube[1][1][1]);
  box(1,100,100);
  rightX = modelX(1,100,100);
  rightY = modelY(1,100,100);
  rightZ = modelZ(1,100,100);
  
  translate(0,0,-100);//middleright
  fillIn(Rubbish.cube[1][1][2]);
  box(1,100,100);
  
  translate(0,100,200);//lowerleft
  fillIn(Rubbish.cube[1][2][0]);
  box(1,100,100);
  
  translate(0,0,-100);//lowercenter
  fillIn(Rubbish.cube[1][2][1]);
  box(1,100,100);
  
  translate(0,0,-100);//lowerright
  fillIn(Rubbish.cube[1][2][2]);
  box(1,100,100);
  
  translate(0,-100,100);//reset
  
  
}