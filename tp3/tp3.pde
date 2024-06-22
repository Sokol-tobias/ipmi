/*
 Nombre: Sokol Tobias Ezequiel
 legajo:120375/9
 Comision 5
 
 LINK AL VIDEO: https://youtu.be/ouwP-3bR3XY
 */

PImage pintura;
boolean rotacion=false;
void setup() {
  size (800, 400);
  background (255);
  pintura = loadImage("pintura.jpg");
  noStroke();
  colorActual = color(colorInicial[0], colorInicial[1], colorInicial[2]);
}

void draw(){
  fill(93, 185, 185);
  rect(width/2,0,width/2,height);
  if(rotacion){
  circulos1();
  }
  else{
  circulos();
  }
  image (pintura,0,0,width/2,height);
  fill(0);
  textSize(15);
  rect(0,0,width/2,50);
  fill(255);
 text("presiona 'a' o 'd' para aumentar o disminuir la velocidad.\nPresiona 'r'para cambiar a un color al azar\npresiona barra espaciadora para reiniciar",10,10);
 }
 
 void mouseClicked(){
  if(mouseX > 400 && mouseX < 800 && mouseY > 0 && mouseY < 400){
    rotacion = !rotacion;
       println(rotacion);
  }
 }
