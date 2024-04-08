///////// Ejercicio 20 LADRILLITOS /////////////

int anchoLienzo = 440;
int altoLienzo = 420;
int anchoRect = 40;
int altoRect = 20;
int distanciaEntreRects = 20;

void setup() {
  background(255);
  
  for (int y = 0; y < altoLienzo; y += (altoRect + distanciaEntreRects)) {
    for (int x = 0; x < anchoLienzo; x += (anchoRect + distanciaEntreRects)) {
      rect(x, y, anchoRect, altoRect);
    }
  }
}

void draw() {
  // No es necesario en este caso
}
