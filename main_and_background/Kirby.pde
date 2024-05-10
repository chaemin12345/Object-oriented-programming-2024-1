class Kirby extends cha_parent_mine{
 Kirby() {
   super();
   y-=10;
   hp+=50;
 }
 int d=4;

 void show() {
   fill(0,0,0);
   text(hp,x-22,(y-50));
   strokeWeight(0);
    fill(215, 72, 148);
    ellipse(x-d*6, y+d*8, d*12, d*5);
    ellipse(x+d*6, y+d*8, d*12, d*5);
    fill(247, 218, 234);
    ellipse(x-d*8, y, d*12, d*5);
    ellipse(x+d*8, y, d*12, d*5);
    circle(x, y, d*20);
    fill(0, 0, 0);
    ellipse(x, y-d*5, d*2, d*8);
    ellipse(x-d*4, y-d*5, d*2, d*7);
    circle(x-d*2, y, d);
    fill(255, 255, 255);
    ellipse(x, y-d*6, d*2, d*3);
    ellipse(x-d*4, y-d*6, d*2, d*3);
 }
}
