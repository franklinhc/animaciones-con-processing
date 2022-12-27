/*
dos animaciones simples CON la biblioteca gifAnimation
una tal cual y las otra a travez de los cuadros interiores del gif 
 
 ph.d. franklin hernández-castro | tec costa rica | HfG gmuend | diciembre 2022
 www.skizata.com
 */

import gifAnimation.*;

Gif sol;
PImage[] cuadrosEnLaAnimacion;

boolean pause = false;
int cuadroActual = 0;

void setup() {
  size(700, 700);
  frameRate(24);
  imageMode(CENTER);
  
  sol = new Gif(this, "sol.gif");
  sol.loop();
  
  cuadrosEnLaAnimacion = Gif.getPImages(this, "sol.gif");
}


void draw() {
  background(0);
  image(sol, height / 4, height / 2, 300, 300);
  
  if (cuadroActual > cuadrosEnLaAnimacion.length-1) cuadroActual=0;
  image(cuadrosEnLaAnimacion [cuadroActual], height *0.75, height / 2, 300, 300);
  
  if(pause) {
    sol.pause();
  }else{ 
    sol.play();
    cuadroActual++;
  }
    
  fill(192);
  text("cuadrosEnLaAnimacion: " + cuadrosEnLaAnimacion.length, 70, height - 30);
  text("cuadroActual: " + cuadroActual, 450, height - 30);
}

void keyPressed() {
  pause = !pause;
}
