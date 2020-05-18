class Walker{
  int x, y; //position coordinates
  Walker(){
    //initiate walker in the center
    x = width/2;
    y = height/2;
  }
  
  void display(){
    stroke(0);
    point(x, y);
  }
  
  void walk(){
    float dir = random(1);
    // 4 possible direction + 1 possibility to stay in current place,
    // each has 10% of possibility.
    // and 50% of probabilty of moving in the direction of the mouse.
    if(dir < 0.5) {
      followMouse();
    } else {
      if(dir < 0.6) {
        x++;
      } else if(dir < 0.7) {
        x--;
      } else if(dir < 0.8) {
        y++;
      } else if(dir < 0.9) {
        y--;
      }
    }
  }

  void followMouse(){
    if(mouseX > x) {
      x++;
    } else {
      x--;
    }
    if(mouseY > y) {
      y++;
    } else {
      y--;
    }
  }
}
  
