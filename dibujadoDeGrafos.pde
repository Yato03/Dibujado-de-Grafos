Graph graph;

void setup(){
 size(720,480); 
 ellipseMode(CENTER);
 graph = testGraph();
 stroke(255);
}

void draw(){
  background(0); 
  graph.draw();
}

void mouseDragged(){
  graph.getVertexes().forEach(vertex -> {
    if(vertex.isMouseOver()){
      println("DRAGGED");
      vertex.followMouse();
    }
  });
}


Graph testGraph(){
  Graph g = new Graph();
  
  //Vertexes
  Vertex v1 = new Vertex(50,50);
  Vertex v2 = new Vertex(300,100);
  Vertex v3 = new Vertex(100,300);
  
  g.addVertex(v1);
  g.addVertex(v2);
  g.addVertex(v3);
  
  //Edges
  Edge e1 = new Edge(v1,v2);
  Edge e2 = new Edge(v2,v3);
  
  g.addEdge(e1);
  g.addEdge(e2);
  
  return g;
}
