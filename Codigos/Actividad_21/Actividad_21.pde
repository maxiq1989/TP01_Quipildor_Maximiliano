//// ejercicio 21 ESCALERAS //////

void setup() {
  size(500, 500);
  background(255); // Fondo blanco
  int x = 0;
  int y = height; // Comenzar desde la parte inferior del lienzo
  int anchoEscalon = 50;
  int altoEscalon = 50;
  int diametroPunto = 10;

  while (x + anchoEscalon <= width && y - altoEscalon >= 0) {
    // Dibujar una línea horizontal
    stroke(0);
    strokeWeight(2);
    line(x, y, x + anchoEscalon, y); 
    
    // Dibujar una línea vertical
    line(x + anchoEscalon, y, x + anchoEscalon, y - altoEscalon);
    
    // Dibujar un punto en la esquina superior derecha del escalón
    fill(255, 0, 0); 
    stroke(255, 0 ,0);
    strokeWeight(1);
    ellipse(x + anchoEscalon, y - altoEscalon, diametroPunto, diametroPunto);
    
    // Actualizar las coordenadas para el próximo escalón
    x += anchoEscalon;
    y -= altoEscalon;
  }
}
