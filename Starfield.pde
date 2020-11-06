Particle[]bits=new Particle[1000];
boolean start=false;
void setup(){
  size (1000,1000);
  for(int i=0; i<bits.length;i++){
    bits[i]=new Particle();
  }
  bits[0]=new SpongeBob();
}
void draw(){
  background(51,170,255);
  for (int i=0;i<bits.length;i++){
    bits[i].show();
    bits[i].move();
  }
}
class Particle{
  double x,y,speed,angle;
  int xcolor;
  Particle(){
    x=y=250;
    xcolor=color((int)(Math.random()*250), (int)(Math.random()*250),(int)(Math.random()*250));
  }
    void move(){
    angle=Math.random()*2*Math.PI;
    speed+=Math.random()*5;
    x+=Math.cos(angle)*speed;
    y+=Math.sin(angle)*speed;
  }
    void show(){
    stroke(0,0,250);
    fill(255,255,255);
    ellipse((float)x,(float)y,(int)Math.random()*30+20,((int)Math.random()*30)+20);
  }
}
class SpongeBob extends Particle{
  void move(){
      translate(0,500);
      frameRate(20);
      if (500 > x){
         x= 150 + (int)(Math.random()*250);
      }
  }
    void show(){
    fill(255,255,0);
    rect((float)x,225,50,50);
  }
}
