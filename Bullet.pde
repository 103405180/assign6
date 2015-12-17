class Bullet {
  int x = 0;
  int y = 0;
  PImage shootImg;

  Bullet(int x, int y) {
    this.x=x;
    this.y=y;
    shootImg = loadImage("img/shoot.png");
  }

  void move() {
    this.x-=1;
  }

  void draw() {
    image(shootImg, x, y);
  } 

  boolean isCollideWithEnemy(int i) {
    if (enemys[i] != null ) {
      if(isHit(enemys[i].x,enemys[i].y,enemys[i].enemyImg.width,enemys[i].enemyImg.height,
     this.x,this.y,this.shootImg.width,this.shootImg.height)) {
        return true;
      }
    }
    return false;
  }
  
  boolean isOutOfBorder()
  {
    if(this.x < -this.shootImg.width){
      return true;
    } 
      return false;
   
  }
}
