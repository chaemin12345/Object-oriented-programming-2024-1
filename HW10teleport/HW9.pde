Kirby Tae;
Kuromi [] mm ;
shark [] kk;
int keepText =0, goal=0;

void setup() {
  size(1000, 800);
  Tae = new Kirby();
  mm = new Kuromi [4];
  kk = new shark [4];
  for (int i = 0; i < 2; i++) {
    mm[2*i] = new Kuromi(i);
    mm[2*i+1] = new TeleportKuromi(i);
  }
  for (int i = 0; i < 4; i++){
    kk[i] = new shark(i);
  }
}

void draw() {
  background(120);
  if (keepText != 0) showFail();
  else if (goal != 0) showSuccess();
  else checkSuccess(Tae.x, Tae.y);

  Tae.show();
  for (int i = 0; i < 4; i++) {
    if(i==3) mm[i].teleport();
    mm[i].update();
    mm[i].show();
    kk[i].update();
    kk[i].show();
    if(keepText == 0) {
       keepText = Tae.collide1(kk[i]) + Tae.collide2(mm[i]);
       if (Tae.collide1(kk[i]) !=0 && Tae.collide2(mm[i])!=0){
          keepText =  keepText/2;
       }
    }
  }
}
  void keyPressed(){
  Tae.keyMove();
}
