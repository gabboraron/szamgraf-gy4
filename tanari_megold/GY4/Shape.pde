abstract class Shape {
  
  PVector position = new PVector();  
  PVector fill_color = new PVector(0, 0, 0);
  PVector stroke_color = new PVector(0, 0, 0);  
  PVector select_fill_color = new PVector(255, 0, 0);
  PVector select_stroke_color = new PVector(255, 0, 0);
  
  Boolean selected = false;
  
  int detailness = 100;
  
  abstract void Draw();
  abstract Boolean Contains(int x, int y);
}
