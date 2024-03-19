float mirror_x=0;
void shark(float cen_x, float cen_y, float size_h){
  fill(179,172,199);
  stroke(149,142,159);
  float size_w = 3*size_h/5.0;
  ellipse(cen_x, cen_y-(1/6.0)*size_h, (1/4.0)*size_w, size_h); //1
  ellipse(cen_x, cen_y, 2*size_w, size_h/5.0); //2
  float rect_x, rect_y, rect_w, rect_h; 
  rect_x = cen_x + size_w/7.0;
  rect_y = cen_y + size_h/5.0;
  rect_w = 8*size_w/25.0;
  rect_h = 2*size_h/5.0;
  rect(rect_x, rect_y, rect_w, 2*size_h/5.0); //3
  mirror_x = mirror(rect_x, cen_x);
  rect(mirror_x - 8*size_w/25.0, cen_y + size_h/5.0, rect_w, 2*size_h/5.0); //4
  ellipse(rect_x + rect_w/2.0, rect_y + rect_h, rect_w, size_h/15.0); //5
  mirror_x = mirror(rect_x + rect_w/2.0, cen_x);
  ellipse(mirror_x, rect_y + rect_h, rect_w, size_h/15.0); //6
  ellipse(cen_x,cen_y,size_w,size_h); //7
  fill(245, 245, 245);
  stroke(215, 215, 215);
  ellipse(cen_x, cen_y + size_h/14.0, 5*size_w/6.0, 17*size_h/20.0); //8
  fill(0,0,0);
  ellipse(rect_x, cen_y - 7*size_h/20.0, size_w/20.0, size_h/20.0);
  ellipse(mirror(rect_x, cen_x), cen_y - 7*size_h/20.0, size_w/20.0, size_h/20.0);
}

float mirror(float x, float cen_x) {
  return 2*cen_x-x;
}
