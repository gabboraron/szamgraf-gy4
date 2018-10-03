ArrayList<Base> bases = new ArrayList<Base>();
ArrayList<Lightning> lightnings = new ArrayList<Lightning>();

Base selected = null;

void setup() {
  size(800, 600);
}

void draw() {
  update();
  background(255, 255, 255);
  
  for (Lightning l : lightnings) {
   l.Draw(); 
  }
  
  for (Base b : bases) {
   b.Draw(); 
  }
}

void update() {  
  if (selected != null) {
   selected.Move(mouseX, mouseY); 
  }
}
void mouseReleased() {
  if (selected != null) {
    selected.deselect();
    selected = null;
  }
}
void mousePressed() {
  if (mouseButton == LEFT) {
    Base to = new Base(new PVector(mouseX, mouseY));
    
    if (bases.size() > 0) {
     Base from = bases.get(bases.size() - 1);      
     Lightning l = new Lightning(from.getPos(), to.getPos());
     lightnings.add(l);
    }    
    
    bases.add(to);
  } else  {
    for (Base b : bases) {
     if (b.Contains(mouseX, mouseY)) {
       b.select();
       selected = b;
       break;
     }
    }
  }
}
