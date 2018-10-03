  PVector from = new PVector (100, 100);
  PVector to = new PVector (100, 300);
  Lighting l = new Lighting(from, to);   
  /**/
  
  ArrayList<Base> bases = new ArrayList<Base>();
  ArrayList<Lighting> lightings = new ArrayList<Lighting>();
  Base selected = null;
  
void setup() {
  size(1800, 800);
}

void draw() {
  background(255, 255, 255);
  //l.Draw();
  
  for(Lighting l : lightings) {
    l.Draw();
  }
  for(Base b : bases) {
    b.Draw();
  }
}

void update() {  
  if(selected != null) {
    selected.Move(mouseX, mouseY);
  }
}

void mousePressed() {
 if(mouseButton == LEFT) {
   Base to = new Base(new PVector(mouseX, mouseY));
   
   if(bases.size() > 0 ){
     Base from = bases.get(bases.size() -1);
     Lighting l = new Lighting(from.getPos(), to.getPos());  //villám pozicíójának megadása
     lightings.add(l);
   }
   bases.add(to); 
 }
 
 /* mozgatás */
 if(mouseButton == RIGHT) {
   for(Base b : bases){
     if (b.Contains(mouseX, mouseY)){
      b.select();
      //b.Move(mouseX, mouseY);
      selected = b;
      break;
    }
   }
 }
}

void mouseReleased() {
  if (selected != null) {
     selected.Move(mouseX, mouseY);
    selected.deselect();
    selected = null;
  }
}
