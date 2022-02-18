class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  public void show()
  {
    if(myNumSegments > getInitialNumOfSeg()/4)
      stroke(112, 83, 4);
    else if(myNumSegments > getInitialNumOfSeg()/16)
      stroke(116, 140, 27);
    else
      stroke(43, 94, 33);
    int startX = myX;
    int startY = myY;
    for(int i = 0; i < myNumSegments; i++){
      myAngle += Math.random()*0.8-0.4;
      int endX = (int)(startX + Math.cos(myAngle) * SEG_LENGTH);
      int endY = (int)(startY + Math.sin(myAngle) * SEG_LENGTH);
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
    if(myNumSegments >= 3){
      Cluster c = new Cluster(myNumSegments/4, startX, startY, 0);
    }
  }
}
