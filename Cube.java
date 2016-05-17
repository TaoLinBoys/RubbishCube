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
        //     0     1        2      3       4       5
	
	for (int i = 0; i<cube.length; i++){
	    for (int j = 0; j < cube[1].length; j++){
		for (int k = 0; k<cube[1][1].length;k++){
		    cube[i][j][k] = i;
		}
	    }
	}
	
	
    }

    //flip array across main diagonal (as in transposing a matrix)
    private void transpose(int face){
    	for (int i = 0; i < 3; i++){
	    for (int j = 0; j < 3; j++){
	        if (j > i){
		    int temp = cube[face][i][j];
		    cube[face][i][j] = cube[face][j][i];
		    cube[face][j][i] = temp;
		}
	    }
	}
    }

    private void flipRows(int face){
	for (int r = 0; r<3; r++){
	    int temp = cube[face][r][0];
	    cube[face][r][0] = cube[face][r][2];
	    cube[face][r][2] = temp;
	}
    }
    private void flipCols(int face){
	for (int c = 0; c<3; c++){
	    int temp = cube[face][0][c];
	    cube[face][0][c] = cube[face][2][c];
	    cube[face][2][c] = temp;
	}
    }

    //for rotate algorithms, transpose array. then flip
    public void rotateF(boolean CW){
	transpose(0);
	
	if (CW){
	    flipRows(0);
	    
	    for (int i = 0; i < 3; i++){
		int temp = cube[1][i][0];
		cube[1][i][0] = cube[4][2][i];
		cube[4][2][i] = cube[2][i][2];
		cube[2][i][2] = cube[3][0][i];
		cube[3][0][i] = temp;
	    }
	}else{
	    flipCols(0);
	    
	    for (int i = 0; i < 3; i++){

		int temp = cube[1][i][0];
		cube[1][i][0] = cube[3][0][i];
		cube[3][0][i] = cube[2][i][2];
		cube[2][i][2] = cube[4][2][i];
		cube[4][2][i] = temp;
	    }
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

    public String toString(){
	String ans = "";
	for (int i = 0; i<cube.length; i++){
	    for (int j = 0; j < cube[1].length; j++){
		for (int k = 0; k<cube[1][1].length;k++){
		    ans += cube[i][j][k] + " ";
		}
		ans+= "\n";
	    }
	    ans+= "\n-------------\n";
	}
	return ans;
    }

    public static void main(String[] args){
	Cube x = new Cube();
	x.rotateF(true);
	x.rotateF(true);
	x.rotateF(true);
	x.rotateF(true);
	System.out.println(x.toString());
    }

    


}
