class Edge{
  private Vertex source,target;
  
  Edge(Vertex source, Vertex target){
    this.source = source;
    this.target = target;
  }
  
  public void setTarget(Vertex target){
   this.target = target; 
  }
  
  public void setSource(Vertex source){
   this.source = source; 
  }
  
  public void draw(){
    line(source.getX(), source.getY(), target.getX(), target.getY());
  }
}
