int initialNumOfSegments = 50;
double angleAdjustment = 0;
public void setup()
{
  size(500, 500);  
  background(255);
  frameRate(12);
}

public void draw()
{
  background(255);
  Cluster c = new Cluster(initialNumOfSegments, 250, 250, angleAdjustment);
  angleAdjustment += Math.PI/32;
}
public void mousePressed()
{
  redraw();
}

public int getInitialNumOfSeg(){
  return initialNumOfSegments;
}
