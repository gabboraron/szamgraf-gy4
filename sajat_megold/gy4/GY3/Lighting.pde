class Lighting {
  ArrayList<SinWave> waves = new ArrayList<SinWave>();
    
    Lighting(PVector from, PVector to) {
      waves.add(new SinWave(from, to));
      waves.add(new SinWave(from, to));
      waves.add(new SinWave(from, to));
      waves.add(new SinWave(from, to));
    }
    
    void Draw() {
      stroke(0, 0, 255);
      fill(0, 0, 255);
      
      float diff = 0.0f;
      for(SinWave w : waves){
        //w.amplitude = millis() / d;
        w.amplitude = 20 + (15+diff *5) * sin(millis() / 60.0 );
        //w.wavelength = millis() / d;
        w.wavelength = 40 + (10+diff *2) * cos(millis() / 200.0 );
        w.Draw();
        //diff += diff;
        diff++;
      }
    }
}
