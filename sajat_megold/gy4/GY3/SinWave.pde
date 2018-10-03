class SinWave extends Shape {
  
  SinWave(PVector from, PVector to){
    this.from = from;
    this.to = to;
  }
  
  PVector from = new PVector(400, 200);
  PVector to = new PVector(800, 400);
  
  float amplitude = 30;
  float wavelength = 40;
  
  void Draw() {
    PVector v = to.copy().sub(from);
    float mag = v.mag();
    float alpha = atan2(v.y, v.x);
    
    pushMatrix();
    translate(from.x, from.y);
    rotate(alpha);
    
    beginShape(LINES);
    
    float step = 2 * PI / detailness;
    for (float x1 = 0; x1 < mag / wavelength - step; x1+=step) {
      
     float y1 = sin(x1);
     
     float x2 = (x1+step);
     float y2 = sin(x2);
     
     vertex(wavelength * x1, amplitude * y1);
     vertex(wavelength * x2, amplitude * y2);
    }
    endShape();
    
    popMatrix();
  }
  
  
  Boolean Contains(int x, int y) {
   return false; 
  }
}
