class Kuromi extends cha_parent_mine{
 Kuromi() {
   super();
 }
 int d=3;

 void show() {
    fill(0,0,0);
    text(hp,x-18,(y-30));
    stroke(0);
    fill(0);
    ellipse(x, y, 22*d, 16*d); //head

    fill(255);
    ellipse(x, y+3*d, 15*d, 10*d);
    fill(0);
    quad(x-4*d, y-1.5*d, x, y-3*d, x+4*d, y-1.5*d, x, y+d); //face

    fill(255);
    arc(x, y+6*d, 3*d, d, 0, PI); //mouth

    fill(255, 183, 211);
    ellipse(x, y+5*d, 1.2*d, 0.8*d); //nose

    myear();
    myeye();
    skull();
  }
  void myear() {
    fill(0);
    beginShape();
    vertex(x-8*d, y-3.5*d);
    vertex(x-12*d, y-4.5*d);
    vertex(x-13*d, y-13*d);
    vertex(x-4*d, y-9*d);
    vertex(x-4*d, y-7.5*d);
    endShape();
    circle(x-13.5*d, y-13.5*d, 2*d); //left ear

    beginShape();
    vertex(x+4*d, y-7.5*d);
    vertex(x+4*d, y-9*d);
    vertex(x+13*d, y-13*d);
    vertex(x+12*d, y-4.5*d);
    vertex(x+8*d, y-3.5*d);
    endShape();
    circle(x+13.5*d, y-13.5*d, 2*d); //right ear
  }

  void myeye() {
    ellipse(x-5*d, y+3*d, 2*d, 3.5*d);
    ellipse(x+5*d, y+3*d, 2*d, 3.5*d);
    strokeWeight(0.5*d);
    line(x+5*d, y+1.3*d, x+6.3*d, y+d);
    line(x-5*d, y+1.3*d, x-6.3*d, y+d);
  }

  void skull() {
    strokeWeight(0.25*d);
    fill(255, 183, 211);
    quad(x-d, y-1.5*d, x-d, y-0.5*d, x+d, y-0.5*d, x+d, y-1.5*d);
    line(x-0.3*d, y-1.2*d, x-0.3*d, y-0.5*d);
    line(x+0.3*d, y-1.2*d, x+0.3*d, y-0.5*d); //pink mouth

    ellipse(x, y-3*d, 5*d, 3.5*d); //pink head

    fill(0);
    ellipse(x+1.2*d, y-2.8*d, 0.5*d, d); //pink right eye
    ellipse(x-1.2*d, y-2.8*d, 0.5*d, d); //pink letf eye
  }
}
