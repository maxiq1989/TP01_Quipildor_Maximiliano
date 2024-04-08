//Actvidad 14
import javax.swing.JOptionPane;

float cateto_adyacente; 
float cateto_opuesto; 

void setup() {

  size(800, 600);

  String inputCateto_Adyacente = JOptionPane.showInputDialog("Ingrese el valor del cateto opuesto a la hipotenusa:");
  String inputCateto_Opuesto = JOptionPane.showInputDialog("Ingrese el valor del cateto adyacente a la hipotenusa");
  
  cateto_adyacente = float(inputCateto_Adyacente);
  cateto_opuesto = float(inputCateto_Opuesto);
  
  float hipotenusa = sqrt(cateto_adyacente * cateto_adyacente + cateto_opuesto * cateto_opuesto);;
  
  textAlign(CENTER, CENTER);
  textSize(40);
  fill(0);
  text("La hipotenusa es: " + hipotenusa, width/2, height/2 - 20);
}
