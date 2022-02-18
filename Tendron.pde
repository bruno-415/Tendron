int initialNumOfSegments = 250;
public void setup()
{
  size(500, 500);  
  background(255);
  noLoop();
}

public void draw()
{
  background(255);
  Cluster c = new Cluster(initialNumOfSegments, 400, 400);
}
public void mousePressed()
{
  redraw();
}

public int getInitialNumOfSeg(){
  return initialNumOfSegments;
}
