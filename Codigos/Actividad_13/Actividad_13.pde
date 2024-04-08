//Actividad 13
import javax.swing.JOptionPane;

float base; 
float altura; 

void setup() {

  size(800, 600);

  String inputBase = JOptionPane.showInputDialog("Ingrese el valor de la base del rectángulo:");
  String inputAltura = JOptionPane.showInputDialog("Ingrese el valor de la altura del rectángulo:");
  
  base = float(inputBase);
  altura = float(inputAltura);
  
  float perimetro = 2 * (base + altura);
  float area = base * altura;
  
  textAlign(CENTER, CENTER);
  textSize(40);
  fill(0);
  text("Perímetro del rectángulo: " + perimetro, width/2, height/2 - 20);
  text("Área del rectángulo: " + area, width/2, height/2 + 20);
}
