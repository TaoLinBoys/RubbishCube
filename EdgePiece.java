public class EdgePiece extends Piece{
    private String color1,color2;
    
    public EdgePiece(String color1, String color2){
	this.color1 = color1;
	this.color2 = color2;
    }

    public String getColor1(){
	return color1;
    }
    public String getColor2(){
	return color2;
    }
}
