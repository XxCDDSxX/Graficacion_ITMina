//Paleta de colores obtenida de: https://coolors.co/palettes/trending 
/*
*  FONDO: 37,36,34
*  LINEAS: 235,94,40
*  RELLENO: 204,197,185
*/
//Programa principal.
float a = 0; //Variable para la rotacion del cubo.
Box b; //Cubo principal.
ArrayList<Box> sponge; // Arreglo principal.

void setup(){
  size(400,400,P3D);
  windowMove(800,300);//Posiciona la ventana *(En mi caso aparecia en un lugar donde no la podia mover...).
  sponge = new ArrayList<Box>();//Instancia del arreglo principal.
  b = new Box(0,0,0,200);//Crea la primera caja.
  sponge.add(b);//La agrega al arreglo principal.
}
// Evento mousePressed ocurre cuando se pulsa un boton del mouse.
void mousePressed(){
  ArrayList<Box> next = new ArrayList<Box>();//Arreglo auxiliar
  //Por cada caja en espoja genera un nuevo arreglo de cajas
  for(Box b: sponge){
    ArrayList<Box> newBoxes = b.generate();
    next.addAll(newBoxes);//Agrega todas las acajas generadas en el arreglo auxiliar.
  }
  //Reasigna el arreglo principal con el arreglo auxiliar.
  sponge = next;
}

void draw(){
  background(37,36,34);
  stroke(235,94,40);
  noFill();
  lights();//Genera luces para generar sombras en la caja.
  translate(width/2,height/2);
  rotateX(a);
  rotateY(a * 0.5);
  //Por cada caja en la esponja mostrar la caja
  for(Box b: sponge){
    b.show();
  }
  a+=0.01;
}
