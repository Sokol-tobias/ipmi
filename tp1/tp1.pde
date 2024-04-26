/*
Nombre: Sokol Tobias Ezequiel
 legajo:120375/9
 Comision 5
 */

PImage durazno;
int fondo=255;
void setup() {
  size (800, 400);
  background (fondo);
  durazno = loadImage("durazno.png");
}

void draw () {
  background (fondo);
  image (durazno, 0, 0, 400, 400);
  fill(206, 65, 0);
  strokeWeight(5);
  stroke(113,34,0);
  circle(589, 221, 210);
  fill(97, 144, 47);
  stroke(1,116,15);
 
  // primer hoja
  beginShape();
  vertex( 569, 154 );
  vertex( 563, 142 );
  vertex( 563, 127 );
  vertex( 567, 114 );
  vertex( 573, 100 );
  vertex( 584, 90 );
  vertex( 599, 79 );
  vertex( 608, 76 );
  vertex( 623, 75 );
  vertex( 605, 85 );
  vertex( 596, 110 );
  vertex( 581, 130 );
  vertex( 573, 146 );
  vertex( 569, 154 );
  endShape();
  //segunda hoja
  beginShape();
  vertex( 573, 157 );
  vertex( 573, 141 );
  vertex( 582, 127 );
  vertex( 618, 103 );
  vertex( 636, 100 );
  vertex( 653, 101 );
  vertex( 672, 109 );
  vertex( 690, 125 );
  vertex( 707, 149 );
  vertex( 702, 143 );
  vertex( 685, 135 );
  vertex( 667, 129 );
  vertex( 653, 128 );
  vertex( 635, 129 );
  vertex( 614, 131 );
  vertex( 611, 131 );
  vertex( 580, 147 );
  vertex( 574, 157 );
  endShape();
}

void mouseClicked() {
  println("vertex(", mouseX+400, ",", mouseY, ");");
}
