int[] colorInicial ={167, 178, 48};
color colorAleatorio;
color colorActual;
//funcion que retorna un valor para el cambio a un color random
int []obtenerValoresAleatorios() {
  int []valores = new int[3];
  for (int i = 0; i < 3; i++) {
    valores[i] = int(random(256));
  }
  return valores;
}
int[] valoresAleatorios = obtenerValoresAleatorios();
{println ("Valores aleatorios generados: " + valoresAleatorios[0] + ", " + valoresAleatorios[1] + ", " + valoresAleatorios[2]);
}

void keyPressed(){
  //boton de color random
 if(key=='r'||key=='R'){
 valoresAleatorios = obtenerValoresAleatorios();
    colorActual = color(valoresAleatorios[0], valoresAleatorios[1], valoresAleatorios[2]);
    println("Color actualizado: (" + valoresAleatorios[0] + ", " + valoresAleatorios[1] + ", " + valoresAleatorios[2] + ")");
 }
 
 //boton para aumentar y disminuir la velocidad de giro
 if(key=='a'){    //disminuye
 spdRot-=0.01;
 println(spdRot);
 }
 if(key=='d'){   //aumenta
 spdRot+=0.01;
 println(spdRot);
 }
 
 //boton para reiniciar los valores
 if(key==' '){
   rotacion = false;
   colorActual = color(colorInicial[0], colorInicial[1], colorInicial[2]);
   spdRot=0.05;
 }
}
