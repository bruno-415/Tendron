public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y, double angleAdjustment)
    {
      Tendril[] tendron = new Tendril[7];
      for(int i = 0; i < 7; i++) {
        tendron[i] = new Tendril(len, (i+1)*2*Math.PI/7+angleAdjustment, x, y);
        tendron[i].show();
      }
    }
}
