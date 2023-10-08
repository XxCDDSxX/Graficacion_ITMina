class Box{
  PVector pos;//Vector de positicion de la caja
  float r;//Dimension de la caja.
  
  //Constructor de la clase.
  Box(float x, float y, float z, float r){
    pos = new PVector(x,y,z);
    this.r = r;
  }
  
  //Generador de cajas, retorna un arreglo de cajas.
  ArrayList<Box> generate(){
    //Crea un arreglo auxiliar para retornar al final.
    ArrayList<Box> boxes = new ArrayList<Box>();
    //Recorre cada caja dentro de la caja principal en x,y,z.
    for(int x = -1;x < 2; x++){
      for(int y = -1; y < 2; y++){
        for(int z = -1; z < 2; z++){
          //Variable auxiliar para llenar el arreglo, sin las cajas centrales.
          int sum = abs(x) + abs(y) + abs(z);
          float newR = r/3;//Dimension de los cubos dentro de un cubo.
          //Si la suma de los absolutos de x,y,z es mayor que uno, de debe agregar un cubo.
          if(sum > 1){
            //Crea un cubo interior y lo agrega al arreglo.
            Box b = new Box(pos.x + x*newR, pos.y + y*newR,pos.z + z*newR, newR);
            boxes.add(b);
          }
        }
      }
    }
    return boxes;
  }
  //Metodo para mostrar la instanica de Box.
  void show(){
    pushMatrix();//Se utiliza para manterner las coordenadas con cambio del click.
    translate(pos.x, pos.y, pos.z);
    fill(204,197,185);
    box(r);//Crea una caja.
    popMatrix();//Restablece las coordinadas anteriores.
  }
  
}
