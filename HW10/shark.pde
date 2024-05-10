class shark extends obstacle {
  shark(int i) {
    super(i);
  }

  shark(int a, int b, int c) {
    super(a, b, c);
  }

  void update_s() {
    update();
  }

  void show() {
    fill(179, 172, 199);
    stroke(149, 142, 159);
    float size_w = 3 * d / 5.0;
    ellipse(x, y - (1 / 6.0) * d, (1 / 4.0) * size_w, d); 
    ellipse(x, y, 2 * size_w, d / 5.0);
    float rect_x, rect_y, rect_w, rect_h;
    rect_x = x + size_w / 7.0;
    rect_y = y + d / 5.0;
    rect_w = 8 * size_w / 25.0;
    rect_h = 2 * d / 5.0;
    rect(rect_x, rect_y, rect_w, 2 * d / 5.0);
    float mirror_x = mirror(rect_x, x);
    rect(mirror_x - 8 * size_w / 25.0, y + d / 5.0, rect_w, 2 * d / 5.0);
    ellipse(rect_x + rect_w / 2.0, rect_y + rect_h, rect_w, d / 15.0);
    mirror_x = mirror(rect_x + rect_w / 2.0, x);
    ellipse(mirror_x, rect_y + rect_h, rect_w, d / 15.0);
    ellipse(x, y, size_w, d);
    fill(245, 245, 245);
    stroke(215, 215, 215);
    ellipse(x, y + d / 14.0, 5 * size_w / 6.0, 17 * d / 20.0);
    fill(0, 0, 0);
    ellipse(rect_x, y - 7 * d / 20.0, size_w / 20.0, d / 20.0);
    ellipse(mirror(rect_x, x), y - 7 * d / 20.0, size_w / 20.0, d / 20.0);
  }

  float mirror(float a, float x) {
    return 2 * x - a;
  }
}
