/*
Nombre: Sokol Tobias Ezequiel
 legajo:120375/9
 Comision 5
 */
 PImage pantalla1,pantalla2,pantalla3;
 int t1 = 640; //tamaño x de las imagenes
 int t2 = 480; //tamaño y de las imagenes
 int pantallaActual;
 int xBoton, yBoton;
 int desplazamientoTexto0 = 0;
 int desplazamientoTexto1 = 0;
 int desplazamientoTexto2 = 0;
 int tiempoPantalla0 = 400;
 int tiempoPantalla1 = 800;
 int tiempoPantalla2 = 1200;
 int tiempo = 0;
 PFont fuente;
void setup(){
  size(640,480);
  fuente=loadFont("fuente.vlw");
  xBoton= width/2;
  yBoton= height/2;
  pantalla1= loadImage("pantalla inicio.jpg");
  pantalla2=loadImage("pantalla2.jpg" );
  pantalla3=loadImage("pantalla3.jpg" );
  pantallaActual=0;
}

void draw(){
 println(frameCount,pantallaActual,desplazamientoTexto0,desplazamientoTexto1,desplazamientoTexto2);
 tiempo++;
   if (tiempo <= tiempoPantalla0) {
    pantallaActual = 0;
  } else if (tiempo <= tiempoPantalla1) {
    pantallaActual = 1;
  } else if (tiempo <= tiempoPantalla2) {
    pantallaActual = 2;
  }
  if (pantallaActual==0){
   push();
    desplazamientoTexto0 += 1;
    textFont(fuente);
    textSize(32);
    background(0);
    tint(255, 150);
    image(pantalla1,0,0,t1,t2);
    fill(255);
    noTint();
    text("El Eternauta es una historieta argentina\n seriada de ciencia ficción creada por el\nguionista Héctor Germán Oesterheld y\nel dibujante Francisco Solano López",10,480-desplazamientoTexto0);
   pop();
 }
   if(pantallaActual==1){

     push();
    desplazamientoTexto1 += 3;
    textFont(fuente);
    textSize(32);
    background(0);
    tint(255, 150);
    image(pantalla2,0,0,t1,t2);
    fill(255);
    noTint();
    text("Fue publicada en Hora Cero Semanal desde 1957 hasta 1959",640-desplazamientoTexto1, yBoton);
   pop();   
 }
  if(pantallaActual==2 ){ 
  push();
    desplazamientoTexto2 += 1;
    textFont(fuente);
    textSize(32);
    background(0);
    tint(255, 150);
    image(pantalla3,0,0,t1,t2);
    fill(255);
    noTint();
    text("La trama se centra en una invasión\nalienígena a la Tierra mediante\nuna tormenta de nieve tóxica que acaba\ncon la mayor parte de la población,\ny la resistencia de supervivientes\nen Buenos Aires",5,400-desplazamientoTexto2);
  pop();  
}
 if( frameCount>= 1400 ){
  push();
    fill(255);
    rectMode(CENTER);
    rect(xBoton, yBoton, 200, 100);
    textSize(15);
    textAlign(CENTER, CENTER);
    fill(0);
    text("Reiniciar presentación", xBoton, yBoton);  
  pop();   
  }
}
void mouseClicked() {
  // Verificar si se hizo clic dentro del botón
  if (frameCount>1400 && mouseX > xBoton-200/2 && mouseX < xBoton + 200/2 && mouseY > yBoton-100/2 && mouseY < yBoton+100/2) {
    pantallaActual=0;
    desplazamientoTexto0 = 0;
    desplazamientoTexto1 = 0;
    desplazamientoTexto2 = 0;
    tiempo = 0;
    frameCount=0;
    println("¡Clic en el botón!");
    }
}
