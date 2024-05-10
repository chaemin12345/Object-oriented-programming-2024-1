class obstacle {
  obstacle() {};
  obstacle(int i) {
   x = random(100, width-100);
   y = random(100, height-200);
   d = 70;
   vx = 1+i;
   vy = (int)(random(-3,3));
 };
  obstacle(int a, int b, int c) {
    x = a;
    y = b;
    d = c;
    while (vx==0 && vy==0) {
     vx = (int)(random(-3,3));
     vy = (int)(random(-3,3));
   }
  }
  float x, y, d, vx, vy;
  void update() { //벽에 닿았을 때 장애물 튕기도록
   if (x<0 || x>width) {
     vx=-vx;
     
   }
   else if (y<0 || y>height-200) {
     vy=-vy;
   }
  x += vx;
  y += vy;
 }
}
