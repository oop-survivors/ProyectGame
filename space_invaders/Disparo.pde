public class Disparo{
  public int y;
  public int x;
  public boolean dis;
  
  Disparo(){
    y=height-40;
    dis=false;
  }
  
  void setX(int xTemp){
    x=xTemp;
  }
  void setDis(boolean disTemp){
    dis=disTemp;
  }
  
  boolean getDis(){
    return dis;
  }
}
