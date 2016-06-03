void bottom(){
  if(closestFace == 3){
    stroke(255,192,203);
  }else{
    stroke(0);
  }
  
  translate(150,150,0);
  
  translate(-100,0,100);//topleft
  fillIn(Rubbish.cube[3][0][0]);
  box(100,1,100);
  
  translate(100,0,0);//topcenter
  fillIn(Rubbish.cube[3][0][1]);
  box(100,1,100);
  
  translate(100,0,0);//topright
  fillIn(Rubbish.cube[3][0][2]);
  box(100,1,100);
  
  translate(-200,0,-100);//middleleft
  fillIn(Rubbish.cube[3][1][0]);
  box(100,1,100);
  
  translate(100,0,0);//middlecenter
  fillIn(Rubbish.cube[3][1][1]);
  box(100,1,100);
  downZ = modelZ(100,0,0);
  
  translate(100,0,0);//middleright
  fillIn(Rubbish.cube[3][1][2]);
  box(100,1,100);
  
  translate(-200,0,-100);//lowerleft
  fillIn(Rubbish.cube[3][2][0]);
  box(100,1,100);
  
  translate(100,0,0);//lowermiddle
  fillIn(Rubbish.cube[3][2][1]);
  box(100,1,100);
  
  translate(100,0,0);//lowerright
  fillIn(Rubbish.cube[3][2][2]);
  box(100,1,100);
  
  translate(-100,0,100);//reset
}