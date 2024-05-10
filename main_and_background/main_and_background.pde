square_en[] ss;
cha_parent_mine[] mm;
int en_hp = 100, min_hp = 100, charic_index = 0, square_index = 0, time_check = 0, hp_clock = 0, first_kuromi_index = -1;

void setup() {
  size(1500, 800);
  mm = new cha_parent_mine[100]; // 플레이어 배열 초기화
  ss = new square_en[30]; // 적 배열 초기화
  for (int i = 0; i < 30; i++) {
    ss[i] = new square_en(); // 적 객체 초기화
  }
}

void drawCloud(float x, float y) {
  fill(255, 255, 255);
  noStroke();
  ellipse(x, y, 60, 60);
  ellipse(x + 20, y - 10, 60, 60);
  ellipse(x - 20, y - 10, 60, 60);
  ellipse(x + 30, y + 10, 60, 60);
  ellipse(x - 30, y + 10, 60, 60);
  ellipse(x + 50, y - 10, 60, 60);
}

void draw() {
  background(210, 230, 228);
  time_check++;
  fill(236, 234, 228);
  rect(0, 600, 1500, 200);
  rect(50, 400, 100, 200);
  rect(1350, 400, 100, 200);
  textSize(30);
  fill(0, 0, 0);
  text("Mine", 68, 385);
  text("Enemy", 1358, 385);
  drawCloud(200, 100);
  drawCloud(550, 70);
  drawCloud(900, 120);
  drawCloud(1300, 80);

  if ((time_check / 300) == 1) {
    if (square_index < 10) {
      ss[square_index] = new square_en();
      square_index++;
    }
    time_check = 0;
  }

  // 모든 Kuromi 및 Kirby 업데이트 및 표시
  for (int i = 0; i < charic_index; i++) {
    mm[i].update();
    mm[i].show();
  }

  // 모든 Kuromi 간 충돌 처리
  for (int i = 1; i < charic_index; i++) {
    mm[i].collide_with_me(mm[i - 1]);
  }
  for (int i = 1; i < square_index; i++) {
    ss[i].collide_with_me1(ss[i - 1]);
  }  

  // 모든 적 업데이트 및 표시
  for (int i = 0; i < square_index; i++) {
    ss[i].update();
    ss[i].show();
  }

  // 가장 앞에 있는 Kuromi가 적을 공격
  if (square_index > 0 && first_kuromi_index >= 0) {
    mm[0].collide1(ss[0]);
    ss[0].collide2(mm[0]);
    if (first_kuromi_index<2 && mm[first_kuromi_index].speed == 0) {
      mm[first_kuromi_index].attact(ss[0]);
    }
    if (ss[0].hp <= 0) {
      for (int i = 0; i < square_index - 1; i++) {
        ss[i] = ss[i + 1];
      }
      square_index--;
    }
  }
  if (square_index == 0) {
    for (int i = 0; i < charic_index; i++) {
      mm[i].speed = 1;
    }
  }
  if (charic_index == 0) {
    for (int i = 0; i < square_index; i++) {
      ss[i].speed = -1;
    }
  }

  // 가장 앞에 있는 적이 모든 Kuromi 및 Kirby 중 가장 앞의 캐릭터 공격
  if (charic_index > 0 && square_index > 0) {
    ss[0].collide2(mm[0]);
    mm[0].collide1(ss[0]);
    if (ss[0].speed == 0) {
      ss[0].attact2(mm[0]);
    }
    if (mm[0].hp <= 0) {
      for (int i = 0; i < charic_index - 1; i++) {
        mm[i] = mm[i + 1];
      }
      charic_index--;
      first_kuromi_index = findFirstKuromiIndex(); // Kuromi 인덱스 갱신
    }
  }

  // Kuromi가 존재하지 않는 경우 Kuromi 인덱스 갱신
  if (first_kuromi_index < 0 && charic_index > 0) {
    first_kuromi_index = findFirstKuromiIndex();
  }

  if (en_hp <= 0) {
    hp_clock++;
    fill(0, 255, 0);
    textSize(50);
    text("Clear", 750, 400);
    if (hp_clock > 300) {
      exit();
    }
  } else {
    textSize(30);
    fill(0, 0, 0);
    text(en_hp, 1350, 300);
    text(min_hp, 150, 300);
  }
  if (min_hp <= 0) {
    hp_clock++;
    fill(255,0, 0);
    textSize(50);
    text("Fail", 750, 400);
    if (hp_clock > 300) {
      exit();
    }
  }

  if (charic_index > 0) {
    mm[0].attact_home();
  }
  else if (square_index > 0) {
   ss[0].attact_home(); 
  }

  text(en_hp, 1350, 300);
  text(min_hp, 150, 300);
}

// 키보드 입력에 따라 Kuromi 또는 Kirby 생성
void keyPressed() {
  if (charic_index < 100) { // 배열의 범위 내에서만 캐릭터 생성
    if (key == 'w' || key == 'W') {
      mm[charic_index] = new Kuromi();
      if (first_kuromi_index < 0) {
        first_kuromi_index = charic_index;
      }
      charic_index++;
    } else if (key == 'e' || key == 'E') {
      mm[charic_index] = new Kirby();
      charic_index++;
    }
  }
}

int findFirstKuromiIndex() {
  for (int i = 0; i < charic_index; i++) {
    if (mm[i] instanceof Kuromi) {
      return i;
    }
  }
  return -1;
}

// 모든 Kuromi 및 Kirby 중 가장 앞에 있는 캐릭터 찾기
cha_parent_mine findFirstCharacter() {
  cha_parent_mine first_charic = mm[0];
  for (int i = 1; i < charic_index; i++) {
    if (mm[i].x < first_charic.x) {
      first_charic = mm[i];
    }
  }
  return first_charic;
}
