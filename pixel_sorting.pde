PImage img;
PImage sorted;

void setup() {
  size(800, 400);
  img = loadImage("sunflower.jpg");
  sorted = createImage(img.width, img.height, RGB);
  
  sorted.loadPixels();
  for (int i = 0; i < sorted.pixels.length; i++) {
    sorted.pixels[i] = color(random(255));
  }
  sorted.updatePixels();
}

void draw() {
  background(0);
  image(img, 0, 0);
  image(sorted, 400, 0);
}
