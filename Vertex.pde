public class Vertex{
  public float weight = 50;
  private float x, y;
  
  Vertex(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  public void draw(){
    circle(x, y, weight);
  }
  
  public float getX(){
    return x;
  }
  
  public float getY(){
    return y;
  }
  
  public boolean isMouseOver(){
   boolean correctX = mouseX > (this.x - this.weight) && mouseX < (this.x + this.weight);
   boolean correctY = mouseY > (this.y - this.weight) && mouseY < (this.y + this.weight);
   return correctX && correctY;
  }
  
  public void followMouse(){
     this.x = mouseX;
     this.y = mouseY;
  }
  
  
}
