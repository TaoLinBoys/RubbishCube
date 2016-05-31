void top(){
  if(closestFace == 4){
    stroke(255,192,203);
  }else{
    stroke(0);
  }
  
  translate(0,-300,0);
  
  translate(-100,0,-100);//topleft
  fillIn(Rubbish.cube[4][0][0]);
  box(100,1,100);
  
  translate(100,0,0);//topcenter
  fillIn(Rubbish.cube[4][0][1]);
  box(100,1,100);
  
  translate(100,0,0);//topright
  fillIn(Rubbish.cube[4][0][2]);
  box(100,1,100);
  
  translate(-200,0,100);//middleleft
  fillIn(Rubbish.cube[4][1][0]);
  box(100,1,100);
  
  translate(100,0,0);//middlecenter
  fillIn(Rubbish.cube[4][1][1]);
  box(100,1,100);
  topX = modelX(100,1,100);
  topY = modelY(100,1,100);
  topZ = modelZ(100,1,100);
  
  translate(100,0,0);//middleright
  fillIn(Rubbish.cube[4][1][2]);
  box(100,1,100);
  
  translate(-200,0,100);//lowerleft
  fillIn(Rubbish.cube[4][2][0]);
  box(100,1,100);
  
  translate(100,0,0);//lowercenter
  fillIn(Rubbish.cube[4][2][1]);
  box(100,1,100);
  
  translate(100,0,0);//lowerright
  fillIn(Rubbish.cube[4][2][2]);
  box(100,1,100);
  
  translate(-100,150,-100);//reset
  stroke(0);
}