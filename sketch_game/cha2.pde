void drawBear(float x, float y, float d){
  fill(139, 69, 19);//갈색
  circle(x-d*5,y-d*5,d*6);//왼쪽 귀
  circle(x+d*5,y-d*5,d*6);//오른쪽 귀
  circle(x,y,d*15);//얼굴
  fill(0);//검정색
  circle(x-d*2,y-d*2,d);//왼쪽눈
  circle(x+d*2,y-d*2,d);//오른쪽눈
  ellipse(x,y,d*2,d);//코
  fill(255, 0, 0);//빨간색
  arc(x,y+d*2,d*6,d*2,0,PI);//입
}
