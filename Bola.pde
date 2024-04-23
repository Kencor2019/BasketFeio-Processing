class Bola {
  PImage ball;
  float xpos, ypos;
  float velx, vely;
  float xac, yac;
  int life;
  
  
  public Bola(float xpos, float ypos) 
  {
    this.xpos = xpos;
    this.ypos = ypos;
    this.velx = 0;
    this.vely = 0;
    this.xac = 0;
    this.yac = 0.1;
    this.life = 10;
    ball = loadImage("minhabola.png");
    
  } // end of contructor
  
  void desenha() 
  {
    image(ball, xpos, ypos, 80, 80);
      
  } // end of desenha
  
  void move() 
  {
    vely += yac;
    
    ypos += vely;
    
    if(ypos >= height - 40) {
      vely *= -0.9;
    }
    
    
    desenha();
  }  // end of move
  
} // end of bola
