//// EJERCICIO 19 OJO /////////////

int ancho, alto;
PVector puntoInicial;
PVector puntoFinal;
int posLineaY = 0;
int velocidad = 1; // Velocidad de movimiento de la elipse
boolean elipseMoviendoAbajo = true; // Variable para controlar la dirección de movimiento de la elipse

void settings(){
  ancho=alto= 400;
  size(ancho, alto);
}

void setup(){ 
  puntoInicial = new PVector(0,posLineaY);
  puntoFinal = new PVector(width,posLineaY);
}

void draw(){
  background(0);
  dibujarLinea();
  if (elipseMoviendoAbajo) {
    dibujarCirculoAbajo();
  } else {
    dibujarCirculoArriba();
  }
}

void dibujarLinea(){
  strokeWeight(8);
  stroke(#0FF017);
  line(puntoInicial.x, puntoInicial.y,puntoFinal.x,puntoFinal.y);
  puntoInicial.y += velocidad;
  puntoFinal.y += velocidad;
}

void dibujarCirculoAbajo(){
  fill(#0FF017);
  ellipse(width/2,puntoInicial.y + 40,80,80);
  
  // Verificar si la elipse ha alcanzado el borde inferior
  if (puntoInicial.y + 40 >= height) {
    elipseMoviendoAbajo = false; // Cambiar la dirección de la elipse hacia arriba
    velocidad = -1; // Cambiar la dirección de movimiento de la elipse hacia arriba
  }
}

void dibujarCirculoArriba(){
  fill(#0FF017);
  ellipse(width/2,puntoInicial.y + 40,80,80);
  
  // Verificar si la elipse ha alcanzado el borde superior
  if (puntoInicial.y <= 0) {
    elipseMoviendoAbajo = true; // Cambiar la dirección de la elipse hacia abajo
    velocidad = 1; // Cambiar la dirección de movimiento de la elipse hacia abajo
  }
}
