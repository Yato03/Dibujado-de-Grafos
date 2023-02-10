import java.util.ArrayList;
import java.util.List;

class Graph{
  private List<Vertex> vertexes;
  private List<Edge> edges;
  
  Graph(){
   vertexes = new ArrayList<Vertex>();
   edges = new ArrayList<Edge>();
  }
  
  public void addVertex(Vertex vertex){
   vertexes.add(vertex);
  }
  
  public List<Vertex> getVertexes(){
   return vertexes; 
  }
  
  public void addEdge(Edge edge){
   edges.add(edge); 
  }
  
  public List<Edge> getEdges(){
   return edges; 
  }
  
  public void draw(){
   vertexes.forEach(vertex -> vertex.draw());
   edges.forEach(edge -> edge.draw());
  }
  
}
