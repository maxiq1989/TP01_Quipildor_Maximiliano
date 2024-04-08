//Actividad 16
import javax.swing.JOptionPane;

float grados_fahrenheit; 

void setup() {

  size(800, 600);

  String inputGrados_Fahrenheit = JOptionPane.showInputDialog("Ingrese los Grados en Fahrenheit que desea convertir a Grados Celsius");
  
  grados_fahrenheit = float(inputGrados_Fahrenheit);
  
  float conversion = (grados_fahrenheit-32) * 5 / 9;

  textAlign(CENTER, CENTER);
  textSize(40);
  fill(0);
  text("Grados Celsius: " + conversion, width/2, height/2);
}
