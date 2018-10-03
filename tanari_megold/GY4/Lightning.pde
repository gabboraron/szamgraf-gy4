class Lightning {
  ArrayList<SinWave> waves = new ArrayList<SinWave>();
  
  Lightning(PVector from, PVector to) {
    waves.add(new SinWave(from, to));
    waves.add(new SinWave(from, to));
    waves.add(new SinWave(from, to));
    waves.add(new SinWave(from, to));
  }
  
  void Draw() {
    for (int i = 0; i < waves.size(); ++i) {
       SinWave w = waves.get(i);
       
       w.amplitude = 20 + (10 + i * 5) * sin(millis() / 60.0);
       w.wavelength = 40 + (20 + i * 2) * cos(millis() / 200.0);
       
       w.Draw();
    }
  }
}
