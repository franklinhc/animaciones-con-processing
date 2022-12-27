/*
demsotración de una clase de animación simple con control por teclas
 
 ph.d. franklin hernández-castro | tec costa rica | HfG gmuend | diciembre 2022
 www.skizata.com
 */

import gifAnimation.*;
Gif solGif;

Animation circulo, escaner;
PImage huellaDigital;
boolean huella = false;

void setup() {
  size(800, 700);
  frameRate(24);
  imageMode(CENTER); // para la animación

  solGif = new Gif(this, "sol.gif");
  solGif.loop();

  huellaDigital = loadImage("huella digital.jpg");

  // objetos
  circulo = new Animation("circulo", 22);
  escaner = new Animation("escaner", 50);
}

void draw() {
  background(0);

  if (huella) {
    image (huellaDigital, 400, 270);
    escaner.display(width/2, height/2);
  } else {
    image (solGif, height / 2+50, height / 2, 500, 500);
    circulo.display(width/2, height/2);
  }

  fill(200);
  text("presione 'c' para cambiar animación y 'p' para detenerla", 20, height-20);
}

void keyPressed() {
  if ( key == 'p' ) {
    circulo.enPlay = !circulo.enPlay;
    escaner.enPlay = !escaner.enPlay;
  }

  if ( key == 'c' ) huella = !huella;
}
