PImage b;
SpaceDefender S1;
Disparo disparo;

SpaceInvader B1;

SpaceInvader I1;
SpaceInvader I2;
SpaceInvader I3;
SpaceInvader I4;
SpaceInvader I5;
SpaceInvader I6;
SpaceInvader I7;
SpaceInvader I8;
SpaceInvader I9;
SpaceInvader I10;
SpaceInvader I11;

SpaceInvader F1;
SpaceInvader F2;
SpaceInvader F3;
SpaceInvader F4;
SpaceInvader F5;
SpaceInvader F6;
SpaceInvader F7;
SpaceInvader F8;
SpaceInvader F9;
SpaceInvader F10;
SpaceInvader F11;

int x;
int y;
int equis;
int count;
public int speedDisp;
boolean avanzar;
boolean avanzar1;
boolean gameover;
color color1;
color color2;
color color3;
color color4;
color color5;
color color6;
//Variable que incrementa segun vamos destruyendo invaders
int speed;
int score;



void setup(){
  count=0;
  
  speedDisp=5;
  
  PFont scoretext;
  scoretext=loadFont("scoretext.vlw");
  textFont(scoretext,30);
  size(800,600);
  frameRate(30);
  smooth();
  noCursor();
  background(0);
  
  b = loadImage("espacio1.jpg");
  
  x=width/2;
  equis=width/2;
  y=160;
  avanzar=true;
  avanzar1=true;
  speed=1;
  gameover=false;
  
  color1= color (10,255,10);
  color2= color(15,236,242);
  color3=color(243,255,0);
  color4=color(255,25,0);
  color5=color(134,0,255);
  color6=color(255,0,211);
  
  B1=new SpaceInvader();//powerUp
  
  S1=new SpaceDefender();
  I1=new SpaceInvader ();
  I2=new SpaceInvader ();
  I3=new SpaceInvader ();
  I4=new SpaceInvader ();
  I5=new SpaceInvader ();
  I6=new SpaceInvader ();
  I7=new SpaceInvader ();
  I8=new SpaceInvader ();
  I9=new SpaceInvader ();
  I10=new SpaceInvader ();
  I11=new SpaceInvader ();
  
  F1=new SpaceInvader ();
  F2=new SpaceInvader ();
  F3=new SpaceInvader ();
  F4=new SpaceInvader ();
  F5=new SpaceInvader ();
  F6=new SpaceInvader ();
  F7=new SpaceInvader ();
  F8=new SpaceInvader ();
  F9=new SpaceInvader ();
  F10=new SpaceInvader ();
  F11=new SpaceInvader ();
  disparo=new Disparo();
  
}

void mousePressed() {
  if (mouseButton == LEFT&&!disparo.dis) {
    disparo.setX(mouseX);
    disparo.setDis(true);
    count--;
    
  } 
  if(mouseButton == RIGHT){
    
  }
}


void draw(){
  if(!gameover){
  
  background(0);
  image(b, 0, 0);
  if(disparo.getDis()){
    fill(255);
    rect(disparo.x,disparo.y,4,8);
    if(count == 0){
    speedDisp=5;
    };
    disparo.y=disparo.y-(speedDisp);
    if (disparo.y<0){
      disparo.setDis(false);
      disparo.y=height-40;
    }
  }
  //Pinto la puntuacion
  fill(255);
  text("Score: "+score,10,25);
  
  S1.pintarTorreta(mouseX);
  
  I1.pintarInvader(x,y,color1,disparo);
  I2.pintarInvader(x-50,y,color1,disparo);
  I3.pintarInvader(x+50,y,color1,disparo);
  I4.pintarInvader(x+100,y,color1,disparo);
  I5.pintarInvader(x-100,y,color1,disparo);
  I6.pintarInvader(x+150,y,color1,disparo);
  I7.pintarInvader(x-150,y,color1,disparo);
  I8.pintarInvader(x+200,y,color1,disparo);
  I9.pintarInvader(x-200,y,color1,disparo);
  I10.pintarInvader(x+250,y,color1,disparo);
  I11.pintarInvader(x-250,y,color1,disparo);
  
  F1.pintarInvader(x,y-40,color2,disparo);
  F2.pintarInvader(x-50,y-40,color2,disparo);
  F3.pintarInvader(x+50,y-40,color2,disparo);
  F4.pintarInvader(x+100,y-40,color2,disparo);
  F5.pintarInvader(x-100,y-40,color2,disparo);
  F6.pintarInvader(x+150,y-40,color2,disparo);
  F7.pintarInvader(x-150,y-40,color2,disparo);
  F8.pintarInvader(x+200,y-40,color2,disparo);
  F9.pintarInvader(x-200,y-40,color2,disparo);
  F10.pintarInvader(x+250,y-40,color2,disparo);
  F11.pintarInvader(x-250,y-40,color2,disparo);
  
  I1.pintarPulpo(x,y+40,color3,disparo);
  I2.pintarPulpo(x-50,y+40,color3,disparo);
  I3.pintarPulpo(x+50,y+40,color3,disparo);
  I4.pintarPulpo(x+100,y+40,color3,disparo);
  I5.pintarPulpo(x-100,y+40,color3,disparo);
  I6.pintarPulpo(x+150,y+40,color3,disparo);
  I7.pintarPulpo(x-150,y+40,color3,disparo);
  I8.pintarPulpo(x+200,y+40,color3,disparo);
  I9.pintarPulpo(x-200,y+40,color3,disparo);
  I10.pintarPulpo(x+250,y+40,color3,disparo);
  I11.pintarPulpo(x-250,y+40,color3,disparo);
  
  F1.pintarPulpo(x,y+80,color4,disparo);
  F2.pintarPulpo(x-50,y+80,color4,disparo);
  F3.pintarPulpo(x+50,y+80,color4,disparo);
  F4.pintarPulpo(x+100,y+80,color4,disparo);
  F5.pintarPulpo(x-100,y+80,color4,disparo);
  F6.pintarPulpo(x+150,y+80,color4,disparo);
  F7.pintarPulpo(x-150,y+80,color4,disparo);
  F8.pintarPulpo(x+200,y+80,color4,disparo);
  F9.pintarPulpo(x-200,y+80,color4,disparo);
  F10.pintarPulpo(x+250,y+80,color4,disparo);
  F11.pintarPulpo(x-250,y+80,color4,disparo);
  
  I1.pintarCalamar(x,y-80,color5,disparo);
  I2.pintarCalamar(x-50,y-80,color5,disparo);
  I3.pintarCalamar(x+50,y-80,color5,disparo);
  I4.pintarCalamar(x-100,y-80,color5,disparo);
  I5.pintarCalamar(x+100,y-80,color5,disparo);
  I6.pintarCalamar(x-150,y-80,color5,disparo);
  I7.pintarCalamar(x+150,y-80,color5,disparo);
  I8.pintarCalamar(x-200,y-80,color5,disparo);
  I9.pintarCalamar(x+200,y-80,color5,disparo);
  I10.pintarCalamar(x-250,y-80,color5,disparo);
  I11.pintarCalamar(x+250,y-80,color5,disparo);
  
  F1.pintarCalamar(x,y-120,color6,disparo);
  F2.pintarCalamar(x+50,y-120,color6,disparo);
  F3.pintarCalamar(x-50,y-120,color6,disparo);
  F4.pintarCalamar(x+100,y-120,color6,disparo);
  F5.pintarCalamar(x-100,y-120,color6,disparo);
  F6.pintarCalamar(x+150,y-120,color6,disparo);
  F7.pintarCalamar(x-150,y-120,color6,disparo);
  F8.pintarCalamar(x+200,y-120,color6,disparo);
  F9.pintarCalamar(x-200,y-120,color6,disparo);
  F10.pintarCalamar(x+250,y-120,color6,disparo);
  F11.pintarCalamar(x-250,y-120,color6,disparo);
  
  B1.pintarPowerUp(equis+500,y-80,color6,disparo);
  
  
  if (avanzar){
    x=x+speed;
  }else{
    x=x-speed;
  }
  if (x>width-280){
    avanzar=false;
    y=y+5;
  }
  if(x<280){
    avanzar = true;
    y=y+5;
  }
  
  if(avanzar1){
  equis = equis-2*speed;
  }

}else{
  //LO QUE PASA CON EL GAME OVER
  background(0);
  //Pinto la puntuacion
  fill(255);
  PFont scoretext;
  scoretext=loadFont("scoretext.vlw");
  textFont(scoretext,50);
  textAlign(CENTER);
  text("Score: "+score,width/2,height-200);
  textFont(scoretext,150);
  textAlign(CENTER);
  text("GAME OVER",width/2,height/2);
}
  
}
