int[] randCount;

void setup(){
  size(600, 200);
  randCount = new int [60];
  background(255);
}

void draw(){
  stroke(255);
  fill(50);
  float num = randomGaussian();
  int sd = 6; //standart deviation
  int mean = randCount.length/2;
  int index = int(sd*num + mean);
  randCount[index]++;
  for(int x=0; x < randCount.length; x++){
    rect(x*width/randCount.length, height, width/randCount.length, 0-randCount[x]);
  }
}
