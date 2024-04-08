//Actividad 12
import javax.swing.JOptionPane;

String nombre;

void setup() {

  size(400, 200);
  
  nombre = JOptionPane.showInputDialog("Por favor, ingrese su nombre:");
  
  textAlign(CENTER, CENTER);
  textSize(40);
  fill(0);
  text("¡Hola " + nombre + "!", width/2, height/2);
}
