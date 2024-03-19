float c1x, c1y, c1d;
float [] c2x, c2y, c2d, c3x, c3y, c3d, v2x, v2y, v3x, v3y;
int y_size, count;
void setup() {
  y_size=800;
  count=3; // 장애물 개수/2
  size(1000, 800);
  c1x = 500; //상어 시작위치
  c1y = y_size-100;
  c1d = 70; //상어 크기(고정)
  c2x = new float[count];
  c2y = new float[count];
  c3x = new float[count];
  c3y = new float[count];
  v2x = new float[count];
  v2y = new float[count];
  v3x = new float[count];
  v3y = new float[count];
  for (int i=0; i<count; i++){
    c2x[i] = random(0, 1000);
    c2y[i] = random(200, y_size-200);
    c3x[i] = random(0, 1000);
    c3y[i] = random(200, y_size-200);
    v2x[i] = random(-3,3);
    v2y[i] = random(-3,3);
    v3x[i] = random(-3,3);
    v3y[i] = random(-3,3);
    if (v2x[i]==0) {
      v2x[i] = random(-3,3);
    }
    else if (v2y[i]==0) {
      v2y[i] = random(-3,3);
    }
    else if (v3x[i]==0) {
      v3x[i] = random(-3,3);
    }
    else if (v3y[i]==0) {
      v3y[i] = random(-3,3);
    }
  }
}
