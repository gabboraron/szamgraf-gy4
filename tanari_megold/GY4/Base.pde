class Base {
 Circle c; 
 
 Base(PVector pos) {
   c = new Circle();
   c.position = pos;
 }
 
  void Draw() {
    c.Draw();
  }
  
  void Move(float x, float y) {
    c.position.x = x;
    c.position.y = y;
  }
  
  void select() {
   c.selected = true; 
  }
  
  void deselect() {
   c.selected = false; 
  }
  
  Boolean Contains(int x, int y) {
   return c.Contains(x, y);
  }
  
  PVector getPos() {
   return c.position; 
  }
}
