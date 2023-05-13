//Elian Arce
//tp1 comision 1
PImage imagen1, imagen2, imagen3;
int segundos= 0;
int estado= 0;
boolean arranca, reinicio;
int posX2, posX3, posX4;
int px, py, ancho, alto;
int posX = 200;
PFont mifuente;
void setup() {
  size(640, 480);
  textAlign(CENTER, CENTER);
 mifuente = loadFont("miletra.vlw");
 textFont(mifuente, 20);
  posX2 = 1100;
  posX3 = -200;
  posX4 = 1100;
  imagen1 = loadImage("puenteinca1.jpg");
  imagen2 = loadImage("puenteinca2.png");
  imagen3 = loadImage("puenteinca3.jpg");
  px = 220;
  py = 420;
  ancho = 200;
  alto = 50;
}

void draw() {
  text(segundos, width/2, 300);
  println( mouseX + ";" + mouseY);
  if (arranca == true) {
    if (frameCount%60==0) {
      segundos ++;
    }
  }
  if (estado==0) {
    image(imagen1, 0, 0, 640, 480);
  }
  if (segundos<= 0) {
    fill(255);
    textSize(38);
    text("EMPEZAR", 320, 445);
  } else if ( segundos>0 && segundos<= 8) {
    text("ESTE ES EL PUENTE DEL INCA \n ES UN MONUMENTO \n NATURAL, PROTEGIDO \n DE LA PROVINCIA DE MENDOZA \n CREADO EN 1991", posX2, height/3);
  }
  if (posX2>width/2) {
    posX2 = posX2 -2;
  }
  if (estado==1) {
    image(imagen2, 0, 0, 640, 480);
    text("FORMA PARTE DEL SISTEMA VIAL \n ANDINO QHAPAQÑAN, \n DECLARADO PATRIMONIO \n DE LA HUMANIDAD POR UNESCO", width/2, posX3);
    if (posX3<height/2) {
      posX3 = posX3 +2;
    }
  }
  if (estado==2) {

    image(imagen3, 0, 0, 640, 480 );
  }
  if (segundos<=8) {
    estado = 0;
    if (segundos<=0) {
      if (mouseX>220 && mouseX <420 && mouseY>419 && mouseY<470 ) {
        fill(0, 0, 0, 200);
      } else {
        fill(0, 0, 0, 100);
      }
      rect(px, py, ancho, alto);
      fill(0, 0, 0, 255);
    }
  } else if (segundos>8 && segundos<= 16) {
    estado = 1;
  } else if (segundos>16) {
    estado = 2;
    fill(255);
    text("UN LUGAR TURISTICO \n MUY LINDO DE VICITAR \n EN CUALQUIER DIA \n DEL AÑO EN FAMILIA", posX4, height/2);
    if (posX4>width/2) {
      posX4 = posX4 -2;
    }
  }
  if (segundos>24 ) {
    if (mouseX>220 && mouseX <420 && mouseY>419 && mouseY<470 ) {
      fill(0, 0, 0, 200);
    } else {
      fill(0, 0, 0, 100);
    }
    rect(px, py, ancho, alto);
    fill(0, 0, 0, 255);
  }
  if (segundos>24) {
    fill(255);
    textSize(38);
    text("REINICIAR", 320, 445 );
  }
}
void mousePressed() {
  if (mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto) {
    posX += 10;
    arranca = true;
  }
  if (mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto) {
    segundos = 0;
    reinicio = true;
    posX2 = 1100;
    posX3 = -200;
    posX4 = 1100;
  }
}

void keyPressed() {
  segundos = 0;
  estado =0;
  arranca  = false;
}
