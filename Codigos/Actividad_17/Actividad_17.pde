//Actividad 17
float link_x1, link_y1;
float premio_x2, premio_y2;

void setup (){
  
  size(800, 600);
  
  link_x1 = width/2;
  link_y1 = height/2;
  premio_x2 = random(width);
  premio_y2 = random(height);
  }

void draw (){
  
  background(255);
  
  fill(0,0,255);
  ellipse (link_x1,link_y1,20,20);
  fill(255,255,0);
  rect (premio_x2,premio_y2,20,20);
  
  float distancia = sqrt(pow(premio_x2 - link_x1, 2) + pow(premio_y2 - link_y1, 2));
  
  if (distancia < 10) {
  premio_x2 = random(width);
  premio_y2 = random(height);
  }
   
}

void mouseMoved(){
  link_x1 = mouseX;
  link_y1 = mouseY;
}
