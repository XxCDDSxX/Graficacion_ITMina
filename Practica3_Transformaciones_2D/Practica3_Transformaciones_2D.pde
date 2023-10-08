float rect_Width = 100;
float rect_Height = 100;
float rect_y = 0;
float rect_x = 0;
float rect_z = 0;
boolean flag = false;
long count = 0;
int selector = 0;
void setup(){
  size(500,500,P3D);
}
void draw(){
  background(0);
  
  if(keyPressed){
    switch(key){
      case 'q':
        selector = 1;
        redraw();
        reset_Var();
      break;
      case 'w':
        selector = 2;
        redraw();
        reset_Var();
      break;
      case 'e':
        selector = 3;
        redraw();
        reset_Var();
      break;
      case 'r':
        selector = 4;
        redraw();
        reset_Var();
      break;
    }
  }
  if(selector == 1)
    translate_Y();
  if(selector == 2)
    translate_X();
  if(selector == 3)
    rotateRect();
  if(selector == 4)
    shearRect();
  
  
}
void reset_Var(){
  count = 0;
  flag = false;
  rect_y = 0;
  rect_x = 0;
  rect_z = 0;
}
void translate_Y(){
  translate(0, rect_y);
  rect((width/2)-(rect_Width/2), (height/2)-(rect_Height/2),rect_Width,rect_Height);
  rect_y = !flag ? rect_y-0.8 : rect_y+0.8;
  if(count < 150){
    count++;    
  }
  else{
    count = 0;
    flag = flag ? false : true;
  }
}

void translate_X(){
  translate(rect_x, 0);
  rect((width/2)-(rect_Width/2), (height/2)-(rect_Height/2),rect_Width,rect_Height);
  rect_x = !flag ? rect_x-0.8 : rect_x+0.8;
  if(count < 150){
    count++;    
  }
  else{
    count = 0;
    flag = flag ? false : true;
  }
}

void rotateRect(){
  translate(width/2,height/2);
  rotateZ(rect_z);
  rect(-(rect_Width/2), -(rect_Height/2),rect_Width,rect_Height);
  rect_z = !flag ? rect_z-0.05 : rect_z+0.05;
  if(count < 150){
    count++;    
  }
  else{
    count = 0;
    flag = flag ? false : true;
  }
}

void shearRect(){
  translate(width/2,height/2);
  shearX(rect_x);
  rect(-(rect_Width/2), -(rect_Height/2),rect_Width,rect_Height);
  rect_x = !flag ? rect_x-0.01 : rect_x+0.01;
  if(count < 150){
    count++;    
  }
  else{
    count = 0;
    flag = flag ? false : true;
  }
}
