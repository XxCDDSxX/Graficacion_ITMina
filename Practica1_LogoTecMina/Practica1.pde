// Tamaño dela ventana
size(500,500);
// Centro de Ventana
int x = width / 2;
int y = height / 2;
// Fondo de la ventana
background(7, 18, 41);
// Diagonales
strokeWeight(1);
stroke(252, 163, 17);
line(width, 0, 0,height);
line(0,0,width,height);
// Circulo
fill(20, 33, 61);
strokeWeight(4);
stroke(252, 163, 17);
ellipse(x, y, width - 25, height - 25);
// Arcos
strokeWeight(2);
arc(x,y,width - 50, height - 50, 1.75, 3.75);
arc(x,y,width - 50, height - 50, 5, 6);
// Linea de centro
strokeWeight(0.5);
line(100,height/2,width-100,height/2);
// Letras
int fSize = 50;//Tamaño de la letra (considerandoun cuadrado)
int fSpace = 50;//Espacio entre letras
//Grozor de lineas
strokeWeight(3);
stroke(229, 229, 229);
// Primera linea
int px1 = (width - ((fSize * 3)+(fSpace * 2))) / 2;
int py1 = 170;
// T
line(px1, py1, px1 + fSize, py1);
line(px1 + (fSize/2), py1, px1 + (fSize/2), py1 + fSize);
px1 += fSize + fSpace;
// E
line(px1, py1, px1 + fSize, py1);
line(px1, py1, px1, py1 + fSize);
line(px1, py1 + (fSize/2), px1 + fSize, py1 + (fSize/2));
line(px1, py1 + fSize, px1 + fSize, py1 + fSize);
px1 += fSize + fSpace;
// C
line(px1, py1, px1 + fSize, py1);
line(px1, py1, px1, py1 + fSize);
line(px1, py1 + fSize, px1 + fSize, py1 + fSize);
// Segunda linea
int px2 = (width - ((fSize * 4)+(fSpace * 3))) / 2;
int py2 = height - (170 + fSize);
// M
line(px2, py2, px2 + fSize, py2);
line(px2, py2, px2, py2 + fSize);
line(px2 + fSize, py2, px2 + fSize, py2 + fSize);
line(px2 + (fSize/2), py2, px2 + (fSize/2), py2 + fSize);
px2 += fSize + fSpace;
// I
line(px2, py2, px2 + fSize, py2);
line(px2 + (fSize/2), py2, px2 + (fSize/2), py2 + fSize);
line(px2, py2 + fSize, px2 + fSize, py2 + fSize);
px2 += fSize + fSpace;
// N
line(px2, py2, px2, py2 + fSize);
line(px2 + fSize, py2, px2 + fSize, py2 + fSize);
line(px2, py2, px2 + fSize, py2 + fSize);
px2 += fSize + fSpace;
// A
line(px2, py2, px2 + fSize, py2);
line(px2, py2, px2, py2 + fSize);
line(px2 + fSize, py2, px2 + fSize, py2 + fSize);
line(px2, py2 + (fSize * 0.375), px2 + fSize, py2 + (fSize * 0.375));
