/*
animación simple (SIN biblioteca) cargando cada cuadro por aparte.
 se detiene al final de la animación y vuelve a moverse
 tocando cualquier tecla
 
 ph.d. franklin hernández-castro | tec costa rica | HfG gmuend | diciembre 2022
 www.skizata.com
 */

int cantidadDeCuadros = 21;  // The number of frames in the animation
PImage[] misImagenes = new PImage[cantidadDeCuadros];
int i = 0;
boolean deIda = true; // cuando es falso va de vuelta :)
boolean play = true; // para detenrla animación cuando termina un ciclo


void setup() {
  size(800, 600);
  misImagenes[0]  = loadImage("dribbble_switch 1.jpg");
  misImagenes[1]  = loadImage("dribbble_switch 2.jpg");
  misImagenes[2]  = loadImage("dribbble_switch 3.jpg");
  misImagenes[3]  = loadImage("dribbble_switch 4.jpg");
  misImagenes[4]  = loadImage("dribbble_switch 5.jpg");
  misImagenes[5]  = loadImage("dribbble_switch 6.jpg");
  misImagenes[6]  = loadImage("dribbble_switch 7.jpg");
  misImagenes[7]  = loadImage("dribbble_switch 8.jpg");
  misImagenes[8]  = loadImage("dribbble_switch 9.jpg");
  misImagenes[9]  = loadImage("dribbble_switch 10.jpg");
  misImagenes[10] = loadImage("dribbble_switch 11.jpg");
  misImagenes[11] = loadImage("dribbble_switch 12.jpg");
  misImagenes[12] = loadImage("dribbble_switch 13.jpg");
  misImagenes[13] = loadImage("dribbble_switch 14.jpg");
  misImagenes[14] = loadImage("dribbble_switch 15.jpg");
  misImagenes[15] = loadImage("dribbble_switch 16.jpg");
  misImagenes[16] = loadImage("dribbble_switch 17.jpg");
  misImagenes[17] = loadImage("dribbble_switch 18.jpg");
  misImagenes[18] = loadImage("dribbble_switch 19.jpg");
  misImagenes[19] = loadImage("dribbble_switch 20.jpg");
  misImagenes[20] = loadImage("dribbble_switch 21.jpg");
}

void draw() {
  background(0);

  image (misImagenes[i], 0, 0);
  //println(i);

  if (play) {
    if (deIda) i++;
    else i--;
  }

  if (i>=20) {
    deIda = false;
    play = false;
  }
  if (i<=0) {
    deIda = true;
    play = false;
  }

  fill(255);
  text("presione cualquier tecla para detener o reiniciar al animación", 20, height-20);
}

void keyPressed() {
  play = !play;
}
