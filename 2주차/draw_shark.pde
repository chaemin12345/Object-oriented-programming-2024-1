void draw() {
  background(120);
  fill(130,0,0);
  stroke(255,0,0);
  rect(300,0,400,50);
  stroke(0, 0, 0);
  fill(0,0,0);
  if (c1x<0 || c1x>width || c1y<0 || c1y>y_size) {
    c1x=500;
    c1y=y_size-100;
  }
  for (int i=0;i<count;i++) { //장애물 이동
    c2x[i] += v2x[i];
    c2y[i] += v2y[i];
    c3x[i] += v3x[i];
    c3y[i] += v3y[i];
    drawBear(c2x[i], c2y[i], 2);
    myitem(c3x[i], c3y[i], 2);
    if(c2x[i]<0 || c2x[i]>width) v2x[i] = -v2x[i]; //벽에 충돌시 방향 전환
    if(c2y[i]<100 || c2y[i]>(y_size)-200) v2y[i] = -v2y[i];
    if(c3x[i]<0 || c3x[i]>width) v3x[i] = -v3x[i];
    if(c3y[i]<100 || c3y[i]>(y_size)-200) v3y[i] = -v3y[i];
  }
  shark(c1x, c1y, c1d);
  if (keyPressed) { //wasd 상어조작키
    if (key == 'd') c1x+=1; 
    else if (key == 'w') c1y-=1;
    else if (key == 's') c1y+=1;
    else if (key == 'a') c1x-=1;
  }
  collide_obstacle(); //충돌 판정
  if (c1y<50 && 300<c1x && c1x<700) {
    textSize(100);
    col_text_count++;
    text("Clear", 400, 400);
    if (col_text_count>180) {
      exit();
    }
  }
  if (col_text_time==true && col_text_count<10) {
      textSize(100);
      col_text_count++;
      text("FAIL", 400, 400);
  }
  else if (col_text_time==true && col_text_count>=10) {
    c1x = 500;
    c1y = y_size-100;
    col_text_count = 0;
    col_text_time=false;
  }
}
