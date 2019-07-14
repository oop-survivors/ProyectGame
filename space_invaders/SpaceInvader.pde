public class SpaceInvader{
  //Inicializamos las variables que serviran para realizar el movimiento de los invaders
  public int contador=(int)random(10);
  public boolean estado;
  public boolean PulpoVivo=true;
  public boolean CalVivo=true;
  public boolean InvaderVivo=true;
  public boolean PowerUpVivo=true;
  
  //Metodo para dibujar un pulpo , uno de los tipos de invader
  void pintarPulpo(int x,int y, color col,Disparo disp){
    if(PulpoVivo){
    fill(col);
    rect(x-4,y-4,8,8);
    rect(x-12,y-8,24,4);
    rect(x-20,y-12,40,4);
    rect(x-8,y-16,16,4);
    rect(x-4,y+8,8,4);
    rect(x-12,y,8,8);
    rect(x+4,y,8,8);
    rect(x-24,y-8,12,12);
    rect(x+12,y-8,12,12);
    
    if(estado){
      rect(x-16,y+8,8,4);
      rect(x-24,y+12,8,4);
      rect(x+8,y+8,8,4);
      rect(x+16,y+12,8,4);
    }else{
      rect(x-20,y+8,8,4);
      rect(x-16,y+12,8,4);
      rect(x+12,y+8,8,4);
      rect(x+8,y+12,8,4);
    }
    //Calculamos si se le han disparado y en ese caso les hacemos desparecer
    if ((disp.x>=x-24&&disp.x<=x+16)&&(disp.y>=y-16&&disp.y<=y+12)&&disp.dis){
      PulpoVivo=false;
      disp.dis=false;
      disp.y=height-40;
      score=score+10;
    }
    if(y>height){
     gameover=true; 
    }
    
    }
  }
  
  //Metodo para dibujar un calamr , uno de los tipos de invader
  void pintarCalamar(int x,int y, color col,Disparo disp){
   if(CalVivo){
    fill(col);
    rect(x-4,y-16,8,20);
    rect(x-8,y-12,4,8);
    rect(x+4,y-12,4,8);
    rect(x-12,y-8,4,8);
    rect(x+8,y-8,4,8);
    rect(x-16,y-4,8,8);
    rect(x+8,y-4,8,8);
    rect(x-8,y,4,4);
    rect(x+4,y,4,4);
    
    if (estado){
       rect(x-8,y+4,4,4);
       rect(x+4,y+4,4,4);
       rect(x-12,y+8,4,4);
       rect(x+8,y+8,4,4);
       rect(x-16,y+12,4,4);
       rect(x+12,y+12,4,4);
       rect(x-8,y+12,4,4);
       rect(x+4,y+12,4,4);
       rect(x-4,y+8,8,4);
    }else{
       rect(x-12,y+4,4,4);
       rect(x+8,y+4,4,4);
       rect(x-16,y+8,4,4);
       rect(x+12,y+8,4,4);
       rect(x-12,y+12,4,4);
       rect(x+8,y+12,4,4);
       rect(x-4,y+4,8,4);
    }
        //Calculamos si se le han disparado y en ese caso les hacemos desparecer
    if ((disp.x>=x-16&&disp.x<=x+12)&&(disp.y>=y-16&&disp.y<=y+12)&&disp.dis){
      CalVivo=false;
      disp.dis=false;
      disp.y=height-40;
      speed++;
      score=score+50;
    }
    if(y>height){
     gameover=true; 
    }
    
   }
    
  }
  
  //Metodo para dibujar un cangrejo, uno de los tipos de invader
  void pintarInvader(int x,int y, color col,Disparo disp){
    if(InvaderVivo){
    fill(col);
    noStroke();
    //*4
    rect(x-8,y,20,8);
    rect(x-12,y+4,4,8);
    rect(x-12,y-8,4,4);
    rect(x-12,y-16,4,4);
    rect(x-16,y-4,8,4);
    rect(x-8,y-12,4,8);
    rect(x-4,y-8,12,8);
    rect(x+8,y-12,4,8);
    rect(x+12,y-8,4,20);
    rect(x+16,y-4,4,8);
    rect(x+12,y-16,4,4);
    
    if(estado){
      //brazo derecho
      rect(x+20,y,4,12);
      //pata derecha
      rect(x+4,y+12,8,4);
       //brazo izqdo
      rect(x-20,y+4,4,8);
      //hombro izqdo
      rect(x-20,y,12,4);
      //pata izqda
      rect(x-8,y+12,8,4);
    }else{
      //brazo derecho
      rect(x+20,y-8,4,12);
      //pata derecha
      rect(x+16,y+12,4,4);
       //brazo izqdo
      rect(x-20,y-8,4,8);
      //hombro izqdo
      rect(x-20,y,12,4);
      //pata izqda
      rect(x-16,y+12,4,4);
    }
    
    if (estado){
      contador++;
      if (contador>9){
        estado=false;
      }
    }else{
      contador--;
      if (contador<0){
        estado=true;
      }
    }
            //Calculamos si se le han disparado y en ese caso les hacemos desparecer
    if ((disp.x>=x-20&&disp.x<=x+20)&&(disp.y>=y-16&&disp.y<=y+12)&&disp.dis){
      InvaderVivo=false;
      disp.dis=false;
      disp.y=height-40;
      score=score+20;
    }
    if(y>height){
     gameover=true; 
    }
    
    }
    
}
//POWEWEWEWE-----------------------------------------------------
  void pintarPowerUp(int x,int y, color col,Disparo disp){
    if(PowerUpVivo){
    fill(col);
    noStroke();
    //*4
    rect(x-8,y,20,8);
    rect(x-12,y+4,4,8);
    rect(x-12,y-8,4,4);
    rect(x-12,y-16,4,4);
    rect(x-16,y-4,8,4);
    rect(x-8,y-12,4,8);
    rect(x-4,y-8,12,8);
    rect(x+8,y-12,4,8);
    rect(x+12,y-8,4,20);
    rect(x+16,y-4,4,8);
    rect(x+12,y-16,4,4);
    
    if(estado){
      //brazo derecho
      rect(x+20,y,4,12);
      //pata derecha
      rect(x+4,y+12,8,4);
       //brazo izqdo
      rect(x-20,y+4,4,8);
      //hombro izqdo
      rect(x-20,y,12,4);
      //pata izqda
      rect(x-8,y+12,8,4);
    }else{
      //brazo derecho
      rect(x+20,y-8,4,12);
      //pata derecha
      rect(x+16,y+12,4,4);
       //brazo izqdo
      rect(x-20,y-8,4,8);
      //hombro izqdo
      rect(x-20,y,12,4);
      //pata izqda
      rect(x-16,y+12,4,4);
    }
    
    if (estado){
      contador++;
      if (contador>9){
        estado=false;
      }
    }else{
      contador--;
      if (contador<0){
        estado=true;
      }
    }
            //Calculamos si se le han disparado y en ese caso les hacemos desparecer
    if ((disp.x>=x-20&&disp.x<=x+20)&&(disp.y>=y-16&&disp.y<=y+12)&&disp.dis){
      PowerUpVivo=false;
      disp.dis=false;
      disp.y=height-40;
      count=20;
      speedDisp=25;
      //score=score+20;
    }
    if(y>height){
     gameover=true; 
    }
    
    }
    
}


}
