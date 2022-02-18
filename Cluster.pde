public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
      Tendril[] tendron = new Tendril[7];
      for(int i = 0; i < 7; i++) {
        tendron[i] = new Tendril(len, Math.random()*2*Math.PI/7, x, y);
        tendron[i].show();
      }
    }
}
