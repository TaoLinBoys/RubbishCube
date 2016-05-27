void mousePressed(){
  if(overRect(width/2-70,height-80,60,60)){
    Rubbish.rotateL(false);
  }
  if(overRect(width/2+10,height-80,60,60)){
    Rubbish.rotateL(true);
  }
  
  //front turns
  if(overRect(50,50,50,50)){
    Rubbish.rotateF(false);
  }
  if(overRect(100,50,50,50)){
    Rubbish.rotateF(true);
  }
  
  //right
  if(overRect(50,150,50,50)){
    Rubbish.rotateR(false);
  }
  if(overRect(100,150,50,50)){
    Rubbish.rotateR(true);
  }
  
  //left
  if(overRect(50,250,50,50)){
    Rubbish.rotateL(false);
  }
  if(overRect(100,250,50,50)){
    Rubbish.rotateL(true);
  }
  
  //top
  if(overRect(50,350,50,50)){
    Rubbish.rotateT(false);
  }
  if(overRect(100,350,50,50)){
    Rubbish.rotateT(true);
  }
  
  //back
  if(overRect(50,450,50,50)){
    Rubbish.rotateB(false);
  }
  if(overRect(100,450,50,50)){
    Rubbish.rotateB(true);
  }
  
  //down
  if(overRect(50,550,50,50)){
    Rubbish.rotateD(false);
  }
  if(overRect(100,550,50,50)){
    Rubbish.rotateD(true);
  }
  
  if(overRect(300,50,50,50)){
    Rubbish.scrambleCube();
  }
}