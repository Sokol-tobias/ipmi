PImage durazno;
int fondo=255;
void setup(){
  size (800,400);
  background (fondo);
  durazno = loadImage("durazno.png");
}

void draw (){
  background (fondo);
  image (durazno, 0,0,400,400);
  fill(206,65,0);
  noStroke();
  circle(589,221,210);
  fill(97,144,47);
  
 // primer hoja
  beginShape();
  vertex(570,155);
  vertex(563,126);
  vertex(578,96);
  vertex(608,77);
  vertex(622,75);
  vertex(606,84);
  vertex(601,99);
  vertex(580,127);
  endShape();
 //segunda hoja
  beginShape();
  vertex(572,156);
  vertex(584,125);
  vertex(613,105);
  vertex(647,102);
  vertex(674,113);
  vertex(691,124);
  vertex(706,146);
  vertex(674,130);
  vertex(661,125);
  vertex(630,129);
  endShape();
}

void mouseClicked(){
  println(mouseX, mouseY);  
}
