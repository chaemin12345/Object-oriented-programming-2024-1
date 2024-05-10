class square_en extends cha_parent_enemy{
 square_en() {
   super();
 }
 int d=50;
 void show() {
   fill(0,0,0);
   square(x,y,d);
   text(hp,(x+10),(y-10));
 }
  void attact2(cha_parent_mine mm) {
    if (hp > 0) {
      mm.hp -= 1;
    }
  }
}
