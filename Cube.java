import java.io.*;
public class Cube{
    private int[][][] cube;
    private FileWriter front,right,left,down,top,back;
    public Cube(){
	boolean savedCube;

	try{
	File f = new File("front.txt");
	if(f.createNewFile()){
	    savedCube = true;
	}
        front = new FileWriter(f);
	
	File r = new File("right.txt");
        r.createNewFile();
        right = new FileWriter(f);
	
	File l = new File("left.txt");
        l.createNewFile();
	left = new FileWriter(l);

	File d = new File("down.txt");
	d.createNewFile();
	down = new FileWriter(d);
	
	File t = new File("top.txt");
        t.createNewFile();
	top = new FileWriter(t);
	
	File b = new File("back.txt");
        b.createNewFile();
	back = new FileWriter(b);

	}catch (IOException e){
	    savedCube = false;
	}

	
	cube = new int[6][3][3];
	//array of faces (3d array)
	// [0,0,0] [1,1,1] [2,2,2] [3,3,3] [4,4,4] [5,5,5] 
	// [0,0,0] [1,1,1] [2,2,2] [3,3,3] [4,4,4] [5,5,5] 
	// [0,0,0] [1,1,1] [2,2,2] [3,3,3] [4,4,4] [5,5,5] 
	//   white  blue    green    red    orange  yellow
	//   front  right   left    down    top     back
	//     F     R        L      D       T       B
        //     0     1        2      3       4       5
	
	initializeCube(false); //fix later
	

    }

    private void initializeCube(boolean savedCube){
	if (savedCube){
	    //nevermind
	}else{
	    for (int i = 0; i<6; i++){
		for (int j = 0; j < 3; j++){
		    for (int k = 0; k< 3;k++){
			cube[i][j][k] = i;
		    }
		}
	    }
	}
    }

    private void save(){
	
	for (int i = 0; i<1;i++){
	    String face = "";
	    for (int j = 0; j<3;j++){
		for (int k = 0; k<3;k++){
		    face += cube[i][j][k] + " ";
		}
	        face += "\n";
	    }
	    try{
		fileforFace(i).write(face);
	    }catch (IOException e){
		break;
	    }
	}
    }
    
    private FileWriter fileforFace(int i){
        if (i == 0){
	    return front;
	}
	if (i == 1){
	    return right;
	}
	if (i == 2){
	    return left;
	}
	if (i == 3){
	    return down;
	}
	if (i == 4){
	    return top;
	}
	return back;

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



    //CW INDICATES CLOCKWISE!
    public void rotateF(boolean CW){
	transpose(0);
	
	if (CW){
	    flipRows(0);
	    
	    for (int i = 0; i < 3; i++){
		int temp = cube[1][i][0];
		cube[1][i][0] = cube[4][2][i];
		cube[4][2][i] = cube[2][inv(i)][2];
		cube[2][i][2] = cube[3][0][i];
		cube[3][0][inv(i)] = temp;
	    }
	}else{
	    flipCols(0);
	    
	    for (int i = 0; i < 3; i++){
		int temp = cube[1][i][0];
		cube[1][i][0] = cube[3][0][inv(i)];
		cube[3][0][i] = cube[2][i][2];
		cube[2][i][2] = cube[4][2][inv(i)];
		cube[4][2][i] = temp;
	    }
	}
    }

    public void rotateB(boolean CW){
	transpose(5);
	
	if (CW){
	    flipRows(5);
	    
	    for (int i = 0; i < 3; i++){
		int temp = cube[2][i][0];
		cube[2][i][0] = cube[4][0][inv(i)];
		cube[4][0][i] = cube[1][i][2];
		cube[1][i][2] = cube[3][2][inv(i)];
		cube[3][2][i] = temp;
	    }
	}else{
	    flipCols(5);
	    
	    for (int i = 0; i < 3; i++){
		int temp = cube[2][i][0];
		cube[2][i][0] = cube[3][2][i];
		cube[3][2][i] = cube[1][i][2];
		cube[1][i][2] = cube[4][0][i];
		cube[4][0][i] = temp;
	    }
	}
    }


    public void rotateL(boolean CW){
	transpose(2);
	
	if (CW){
	    flipRows(2);
	    
	    for (int i = 0; i < 3; i++){
		int temp = cube[0][i][0];
		cube[0][i][0] = cube[4][i][0];
		cube[4][i][0] = cube[5][i][2];
		cube[5][i][2] = cube[3][i][0];
		cube[3][i][0] = temp;
	    }
	}else{
	    flipCols(2);
	    
	    for (int i = 0; i < 3; i++){

		int temp = cube[0][i][0];
		cube[0][i][0] = cube[3][i][0];
		cube[3][i][0] = cube[5][i][2];
		cube[5][i][2] = cube[4][i][0];
		cube[4][i][0] = temp;
	    }
	}
    }


    //POTENTIAL PROBLEM with DOWN face
    public void rotateR(boolean CW){
	transpose(1);
	
	if (CW){
	    flipRows(1);
	    
	    for (int i = 0; i < 3; i++){
		int temp = cube[5][i][0];
		cube[5][i][0] = cube[4][i][2];
		cube[4][i][2] = cube[0][i][2];
		cube[0][i][2] = cube[3][i][2];
		cube[3][i][2] = temp;
	    }
	}else{
	    flipCols(1);
	    
	    for (int i = 0; i < 3; i++){

		int temp = cube[5][i][0];
		cube[5][i][0] = cube[3][i][2];
		cube[3][i][2] = cube[0][i][2];
		cube[0][i][2] = cube[4][i][2];
		cube[4][i][2] = temp;
	    }
	}
    }
    public void rotateT(boolean CW){
	transpose(4);
	
	if (CW){
	    flipRows(4);
	    
	    for (int i = 0; i < 3; i++){
		int temp = cube[2][i][0];
		cube[2][i][0] = cube[4][0][i];
		cube[4][0][i] = cube[1][i][2];
		cube[1][i][2] = cube[3][2][i];
		cube[3][2][i] = temp;
	    }
	}else{
	    flipCols(4);
	    
	    for (int i = 0; i < 3; i++){

		int temp = cube[2][i][0];
		cube[2][i][0] = cube[3][2][i];
		cube[3][2][i] = cube[1][i][2];
		cube[1][i][2] = cube[4][0][i];
		cube[4][0][i] = temp;
	    }
	}
    }
    public void rotateD(boolean CW){
	transpose(3);
	
	if (CW){
	    flipRows(3);
	    
	    for (int i = 0; i < 3; i++){
		int temp = cube[2][i][0];
		cube[2][i][0] = cube[4][0][i];
		cube[4][0][i] = cube[1][i][2];
		cube[1][i][2] = cube[3][2][i];
		cube[3][2][i] = temp;
	    }
	}else{
	    flipCols(3);
	    
	    for (int i = 0; i < 3; i++){

		int temp = cube[2][i][0];
		cube[2][i][0] = cube[3][2][i];
		cube[3][2][i] = cube[1][i][2];
		cube[1][i][2] = cube[4][0][i];
		cube[4][0][i] = temp;
	    }
	}
    }

    //inverse for some edge case problems
    private int inv(int i){
	if (i == 0){
	    return 2;
	}
	if (i == 1){
	    return 1;
	}
	return 0;
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
	x.rotateB(false);
	System.out.println(x.toString());
    }

    


}
