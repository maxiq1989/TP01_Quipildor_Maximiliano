//////////// EJERCICIO 22 ///////////////

void setup() {
  size(600, 600);
  background(240); // Fondo gris claro
  int numRayas = 10; // Número de rayas verticales
  float alturaRaya = height / (float)numRayas; // Altura de cada raya
  float diametroCirculo = alturaRaya; // Diámetro
  float y = 0;
  
  while (y < height) {
    // Establecer el color de la raya (alternando gris y blanco)
    stroke(0);
    line(0, y, width, y); // Dibuja las líneas
    
    if (int(y / alturaRaya) % 2 == 0) {
      float x = 0; // Inicio de la posición
      while (x < width) {
        // Se definen colores aleatorios
        fill(random(255), random(255), random(255));
        noStroke(); 
        ellipse(x + diametroCirculo / 2, y + alturaRaya / 2, diametroCirculo, diametroCirculo);
        x += diametroCirculo;
      }
    }
    
    y += alturaRaya; // Cambia a la siguiente raya
  }
}
