public class CornerPiece extends Piece{
    private String color1,color2,color3;

    public CornerPiece(String color1, String color2, String color3){
	this.color1 = color1;
	this.color2 = color2;
	this.color3 = color3;
    }

    public String getColor1(){
	return color1;
    }
    public String getColor2(){
	return color2;
    }
    public String getColor3(){
	return color3;
    }
}
