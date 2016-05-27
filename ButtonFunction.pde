void mousePressed(){
  if(overRect(width/2-70,height-80,60,60)){
    Rubbish.rotateL(false);
  }
  if(overRect(width/2+10,height-80,60,60)){
    Rubbish.rotateL(true);
  }
  
  //front turns
  if(overRect(50,50,50,50)){
    Rubbish.rotateF(true);
  }
  if(overRect(100,50,50,50)){
    Rubbish.rotateF(false);
  }
  
  //right
  if(overRect(50,150,50,50)){
    Rubbish.rotateR(true);
  }
  if(overRect(100,150,50,50)){
    Rubbish.rotateR(false);
  }
  
  //left
  if(overRect(50,250,50,50)){
    Rubbish.rotateL(true);
  }
  if(overRect(100,250,50,50)){
    Rubbish.rotateL(false);
  }
  
  //top
  if(overRect(50,350,50,50)){
    Rubbish.rotateT(true);
  }
  if(overRect(100,350,50,50)){
    Rubbish.rotateT(false);
  }
  
  //back
  if(overRect(50,450,50,50)){
    Rubbish.rotateB(true);
  }
  if(overRect(100,450,50,50)){
    Rubbish.rotateB(false);
  }
  
  //down
  if(overRect(50,550,50,50)){
    Rubbish.rotateD(true);
  }
  if(overRect(100,550,50,50)){
    Rubbish.rotateD(false);
  }
}