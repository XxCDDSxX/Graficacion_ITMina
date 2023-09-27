PShape model;
PImage texture;
float angle;
void setup() {
  size(600, 600, P3D);   
  model = loadShape("uploads_files_2381754_Striker.obj");
  texture = loadImage("01.jpg");
  model.setTexture(texture);
}
void draw() {
  background(220);
  translate(width/2,(height/2)+100);
  rotateY(angle);
  scale(-30);
  shape(model);
  angle+=0.01; 
}
