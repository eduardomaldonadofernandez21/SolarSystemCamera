class Nave{
  
float x,y,z,speed;
PShape imgNave;
  
  Nave(float posX, float posY, float posZ, float velocidad) {
    this.x = posX;
    this.y = posY;
    this.z = posZ;
    this.speed = velocidad;
    imgNave = loadShape("data/space_shuttle/space_shuttle.obj");
    //imgNave = createShape(BOX,40);
  }
  
  void setPosNave(float posX, float posY, float posZ){
    this.x = posX;
    this.y = posY;
    this.z = posZ;
  }
  
  void setSpeed(float velocidad){
    this.speed = velocidad;
  }

  void moveNave() {
    pushMatrix();
    translate(-this.x, this.y, this.z);
    scale(5);
    rotateX(PI);
    rotateY(PI/2);
    shape(imgNave);
    popMatrix();
  }

}
