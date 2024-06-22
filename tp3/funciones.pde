float angle=32;
float centroX, centroY;
float spdRot = 0.05;

void circulos(){//circulos que giran hacia la izquierda
push();
centroX=width/2+197;
centroY=height/2;
 noStroke();
 fill(160, 208, 226);
 ellipse(centroX,centroY,266,208);
 fill(colorActual);
 float x = width;
 float tam = 300;
 int num = 100;
 translate(centroX, centroY);
  
  for(float j=0; j<360;j+=22.5){
    rotate(radians(j));
    pushMatrix();
    for(int i=0;i<num; i++){
    scale(0.7);
        rotate(radians(angle));
    ellipse(x,0,tam,tam);
   }

    popMatrix();
  }
pop();
 angle+=spdRot;
}

void circulos1(){//circulos que giran hacia la derecha
push();
centroX=width/2+197;
centroY=height/2;
 noStroke();
 fill(160, 208, 226);
 ellipse(centroX,centroY,266,208);
 fill(colorActual);
 float x = width;
 float tam = 300;
 int num = 100;
 translate(centroX, centroY);
 
  for(float j=0; j<360;j+=22.5){
    rotate(radians(j));
    pushMatrix();
    for(int i=0;i<num; i++){
    scale(0.7);
        rotate(-radians(angle));
    ellipse(x,0,tam,tam);
   }
    popMatrix();
  }
pop();
 angle+=spdRot;
}
