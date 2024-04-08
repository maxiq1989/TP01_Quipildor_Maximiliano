//Actividad 15
import javax.swing.JOptionPane;

float numero_1; 
float numero_2; 

void setup() {

  size(800, 600);

  String inputNumero_1 = JOptionPane.showInputDialog("Ingrese el primero numero:");
  String inputNumero_2 = JOptionPane.showInputDialog("Ingrese el segundo numero");
  
  numero_1 = float(inputNumero_1);
  numero_2 = float(inputNumero_2);
  
  float suma = numero_1 + numero_2;
  float resta = numero_1 - numero_2;
  float multiplicacion = numero_1 * numero_2;
  
  if(numero_2 !=0) {
    float division = numero_1 / numero_2;  
  
  textAlign(CENTER, CENTER);
  textSize(16);
  fill(0);
    text("Suma: " + suma, width/2, 50);
    text("Resta: " + resta, width/2, 70);
    text("Multiplicación: " + multiplicacion, width/2, 90);
    text("División: " + division, width/2, 110);
  }else {
  textAlign(CENTER, CENTER);
  textSize(40);
  fill(255,0,0);
  text("No pod'es dividir por cero!!!", width/2, height/2);
  }
}
