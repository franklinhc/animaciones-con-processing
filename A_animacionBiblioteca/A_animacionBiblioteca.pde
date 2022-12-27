/*
animación simple CON la biblioteca gifAnimation 
 
 ph.d. franklin hernández-castro | tec costa rica | HfG gmuend | diciembre 2022
 www.skizata.com
 */

import gifAnimation.*;

Gif sol;


boolean pause = false;

void setup() {
  size(700, 700);
  frameRate(24);
  imageMode(CENTER);
  
  sol = new Gif(this, "sol.gif");
  sol.loop();
}


void draw() {
  background(0);
  image(sol, height / 2, height / 2, 300, 300);
}
