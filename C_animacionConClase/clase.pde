/*
 clase de animación simple con control por teclas
 
 ph.d. franklin hernández-castro | tec costa rica | HfG gmuend | diciembre 2022
 www.skizata.com
 */



// Class for animating a sequence of GIFs

class Animation {
  PImage[] images;
  int imageCount;
  int frame;
  boolean enPlay = true;

  Animation(String imagePrefix, int count) {
    imageCount = count;
    images = new PImage[imageCount];

    for (int i = 0; i < imageCount; i++) {
      // nf() le da formato de 4 digitos a la "i"
      // de modo que queda prefijo_0001, prefijo_0002, etc.
      String filename = imagePrefix + nf(i, 4) + ".png";
      images[i] = loadImage(filename);
    }
  }

  void display(float xpos, float ypos) {
    if (enPlay) frame = (frame+1) % imageCount;
    image(images[frame], xpos, ypos);
  }
}
