import java.util.LinkedList;

LinkedList<Bola> lista = new LinkedList<Bola>();

Bola ball;

void setup() 
{
  size(1000, 800);
  background(200, 50, 50);
  frameRate(70);
  
}

void draw() 
{
   background(200, 50, 50);
  if(mousePressed) 
  {
    ball = new Bola(mouseX, mouseY);
    lista.add(ball);  
  }
  for(Bola ball : lista) 
  {
    ball.move();
  }
  
}
