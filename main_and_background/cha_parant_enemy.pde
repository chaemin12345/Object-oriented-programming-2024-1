class cha_parent_enemy{
 cha_parent_enemy() {
   x=1420;
   y=550;
   hp=50;
 };
 float x,y;
 int hp;
 int speed=-1;
 void collide2(cha_parent_mine mm) {
    float dx = abs(x - mm.x);
    if (dx < 60) {
      speed = 0;
    } else {
      speed = -1;
    }
  }
  void attact_home() {
  if (x<200) {
    min_hp-=1;
    speed=0;
  }
 }
 void collide_with_me1(cha_parent_enemy mm) {
  float dx=abs(x-mm.x);
  if (dx<=50) speed=0;
  else speed=-1;
 }

 void attact2(cha_parent_mine mm) {
   mm.hp-=1;
 }
 void update(){
   x+=speed;
 }
 
}
