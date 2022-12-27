/*
creación de un gif a travez de la biblioteca gifAnimation
 ph.d. franklin hernández-castro | tec costa rica | HfG gmuend | diciembre 2022
 www.skizata.com
 */

import gifAnimation.*;
import processing.opengl.*;

GifMaker gifAcrear;
PImage imagenFuente;
float rotacion = 0;
boolean grabando = false;


void setup() {
  size(600, 600, P3D);
  frameRate(12);
  imagenFuente = loadImage("legoMan.png");
}


void draw() {
  background(0);
  translate(width/2, height/2);
  rotacion+=.1;
  rotateY(rotacion);
  //rotateZ(rotacion/5);
  image(imagenFuente, -imagenFuente.width/2, -imagenFuente.height/2);
  if (grabando) gifAcrear.addFrame();
  
  camera();
  if (!grabando){
    fill(190);
    text("para empezar a grabar use 'e' y para terminar 't'", 20, height-20);
  }
  
}


void keyPressed() {
  if ( key == 'e' ) {
    gifAcrear = new GifMaker(this, "export.gif");
    gifAcrear.setRepeat(0); // reeptición continua
    gifAcrear.setTransparent(0, 0, 0); // guarda el color negro de fondo como transparente
    grabando = true;
  }

  if ( key == 't' ) {
    gifAcrear.finish();
    println("gif salvado");
    grabando = false;
  }
}
