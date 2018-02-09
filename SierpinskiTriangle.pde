Triangle bob = new Triangle();
public void setup() {
  size(600, 600);
}
public void draw() {
  background(255);
  bob.sierpinski(0, 600, mouseX);
  frameRate(10);
}
class Triangle {
  public void sierpinski(int x, int y, int len){
    int a = (int)((Math.random()*255)+100);
    if (len<=30){
      stroke(185);
      fill(a, a, a, (int)((Math.random()*300)+150));
      triangle(x, y, x + len, y, x + len/2, y - len);
    } else {
      sierpinski(x, y, len/2);
      sierpinski(x + len/2, y, len/2);
      sierpinski(x + len/4, y - len/2, len/2);
    }
  }
}