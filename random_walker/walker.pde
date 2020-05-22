class Walker{
  PVector position; //position coordinates
  Walker(){
    //initiate walker in the center
    position = new PVector(width/2, height/2);
  }
  
  void display(){
    stroke(0);
    point(position.x, position.y);
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
        position.x++;
      } else if(dir < 0.7) {
        position.x--;
      } else if(dir < 0.8) {
        position.y++;
      } else if(dir < 0.9) {
        position.y--;
      }
    }
  }

  void followMouse(){
    if(mouseX > position.x) {
      position.x++;
    } else {
      position.x--;
    }
    if(mouseY > position.y) {
      position.y++;
    } else {
      position.y--;
    }
  }
}
  
