import java.util.Random;
Random generator;
size(600, 600);
generator = new Random();
background(255);

for(int x=0; x < 1000; x++){
  float numX = (float) generator.nextGaussian();
  float numY = (float) generator.nextGaussian();
  int meanX = width/2;
  int meanY = height/2;
  int sd = 80; //standart deviation
  int pos_x = int(numX * sd + meanX);
  int pos_y = int(numY * sd + meanY);
  float r_palette = (float) generator.nextGaussian();
  int r_mean_color = 127;
  int r_sd_color = 127;
  int r_palette_color = int(r_palette*r_sd_color + r_mean_color);
  float g_palette = (float) generator.nextGaussian();
  int g_mean_color = 127;
  int g_sd_color = 127;
  int g_palette_color = int(g_palette*g_sd_color + g_mean_color);
  float b_palette = (float) generator.nextGaussian();
  int b_mean_color = 127;
  int b_sd_color = 127;
  int b_palette_color = int(b_palette*b_sd_color + b_mean_color);
  noStroke();
  fill(r_palette_color, g_palette_color, b_palette_color);
  ellipse(pos_x, pos_y, 10, 10);
}
