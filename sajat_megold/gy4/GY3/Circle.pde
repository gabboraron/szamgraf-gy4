class Circle extends Shape {
  float r = 40;
  
  void Draw() {
    if (selected) {
      fill(select_fill_color.x, select_fill_color.y, select_fill_color.z);
      stroke(select_stroke_color.x, select_stroke_color.y, select_stroke_color.z);
    } else {
      fill(fill_color.x, fill_color.y, fill_color.z);
      stroke(stroke_color.x, stroke_color.y, stroke_color.z);
    }
    
    beginShape();
     for (int i = 0; i < detailness; i++) {
       float angle = 2 * PI / detailness * i;
       float x = position.x + r * cos(angle);
       float y = position.y + r * sin(angle);
       vertex(x, y);
     }
   endShape(CLOSE);
  }
  
  Boolean Contains(int x, int y) {
    float dx = position.x - x;
    float dy = position.y - y;
    float d = sqrt(dx*dx + dy*dy);
    if (d < r) 
      return true;
    
    return false;
  }
}
