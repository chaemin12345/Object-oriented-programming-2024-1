abstract class cha_parent_mine{
 cha_parent_mine() {
   x=80;
   y=570;
   hp=50;
 };
 float x,y;
 int hp;
 int speed=1;
 void collide1(square_en m) {
   float dx=abs(m.x-x);
   if (dx<60) speed=0;
   else speed=1;
 }
 void collide_with_me(cha_parent_mine mm) {
  float dx=abs(x-mm.x);
  if (dx<=80) speed=0;
  else speed=1;
 }
 void attact(square_en m) {
   m.hp-=1;
 }
 void attact_home() {
  if (x>1300) en_hp-=1; 
 }
 void update(){
   if (x<1400) {
     x+=speed;
   }
 }
 abstract void show();
}
