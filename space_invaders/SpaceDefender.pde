public class SpaceDefender{
   
  
    void pintarTorreta(int x){
      
    fill(255);
   // stroke(255);
    //strokeJoin(BEVEL);
    fill(255);
    rect ( x-40, height-40,80,10);
   // ellipse(x-20,height-40,40,40);
    //ellipse(x+20,height-40,40,40);
    rect(x-20,height-50,40,20);
    triangle(x,height-60, x-10, height-50, x+10, height-50);
    rect(x-30,height-45,60,10);
  }
  
}
