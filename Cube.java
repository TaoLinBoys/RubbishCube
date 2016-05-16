public class Cube{
    private int[][][] cube;

    public Cube(){
	cube = new int[6][3][3];
	//array of faces (3d array)
	// [0,0,0] [1,1,1] [2,2,2] [3,3,3] [4,4,4] [5,5,5] 
	// [0,0,0] [1,1,1] [2,2,2] [3,3,3] [4,4,4] [5,5,5] 
	// [0,0,0] [1,1,1] [2,2,2] [3,3,3] [4,4,4] [5,5,5] 
	//   white  blue    green    red    orange  yellow
	//   front  right   left    down    top     back
	//     F     R        L      D       T       B

	
	for (int i = 0; i<cube.length; i++){
	    for (int j = 0; j < cube[1].length; j++){
		for (int k = 0; k<cube[1][1].length;k++){
		    cube[i][j][k] = i;
		}
	    }
	}
	
	
    }

   
    public void rotateF(boolean CW){
	
	//will affect front, right, left, top, bottom

	//front
	for (int i = 0; i < 3; i++){
	    for (int j = 0; j < 3; j++){
	        if (j > i){
		    int temp = cube[0][i][j];
		    cube[0][i][j] = cube[0][j][i];
		    cube[0][j][i] = temp;
		}
	    }
	}

	//sides affected: 
	//                Left side right column -> top side bottom column
	//                Top side bottom row    -> right side left column
	//                Right side left column -> bottom side top column
	//                Bottom side top row    -> left side right column
	if (CW){
	    for (int i = 0; i < 3; i++){
		int temp = cube[1][i][0];
		cube[1][i][0] = cube[3][0][i];
		cube[3][0][i] = cube[2][i][2];
		cube[2][i][2] = cube[4][2][i];
		cube[4][2][i] = temp;
	    }
	}else{
	    int temp = cube[1][i][0];
	    cube[1][i][0] = cube[4][2][i];
	    cube[4][2][i] = cube[2][i][2];
	    cube[2][i][2] = cube[3][0][i];
	    cube[3][0][i] = temp;
	}
	    
	
	
    }


    public void rotateB(){
    }
    public void rotateL(){
    }
    public void rotateR(){
    }
    public void rotateT(){
    }
    public void rotateD(){
    }

    


}
