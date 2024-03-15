boolean col_text_time = false;
int col_text_count=0;
float d2x, d2y, d2, d3x, d3y, d3;
void collide_obstacle(){
  for (int i=0; i<count; i++) {
    d2x = c1x - c2x[i];
    d2y = c1y - c2y[i];
    d2 = distance(d2x, d2y);
    d3x = c1x - c3x[i];
    d3y = c1y - c3y[i];
    d3 = distance(d3x, d3y);
    if (d2<40 || d3<40) col_text_time = true;
  }
}
