float anim = 0.0;
void setup() {
  size(600, 600);
}

void draw() {
  loadPixels();
  float xoff = 0.0;
  for (int x=0; x < width; x++) {
    float yoff = 1.0;
    for (int y=0; y < height; y++) {
      float red = map(noise(xoff, yoff, anim), 0, 1, 0, 255);
      float green = map(noise(xoff, yoff+2.0, anim), 0, 1, 0, 255);
      float blue = map(noise(xoff, yoff+1.0, anim), 0, 1, 0, 255);
      pixels[y*width + x] = color(red, green, blue);
      yoff += 0.01; 
    }
  xoff += 0.01;
  }
  anim += 0.05;
  updatePixels();
}
