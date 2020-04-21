class Face {

  float x, y;


  void render() {
    stroke(20);
    stroke(#3F2EFF, 150);
    strokeWeight(1);
    fill(#B2ACF7, 50);
    
  }


  void mouth() {
    float sinz = sin(j);
    pushMatrix();
    translate(width/2, height/2);
    for (int i = -150; i <= 150; i+=2) {
      float s = map(i, -150, 150, 0, PI);
      float S = map(sin(s), 0, 1, 0, 100);

      ellipse(i, S, S*sinz, S*sinz);

      //println(S);
    }
    
    popMatrix();
    j+=0.00001;
  }

  void eyes() {
    
    
    pushMatrix();
    float sinz = sin(j);
    translate(width/2, width/2);
    for (int i = -80; i < -60; i++) {
      float s = map(i, -60, -80, 0, PI); 
      float S = map(sin(s), -1, 1, -30, 30);
      ellipse(i, -30, S*sinz, S);
    }

    for (int i = 60; i < 80; i++) {
      float s = map(i, 60, 80, 0, PI); 
      float S = map(sin(s), -1, 1, -30, 30);
      ellipse(i, -30, S*sinz, S);
    }

    popMatrix();
    j+=0.00001;
  }

  void nose() {
    pushMatrix();
    translate(width/2, 200);
    float n = map(sin(j), -1, 1, 0, 100);
    for (int j = 0; j < n; j +=2) {
      float s = map(j, 0, 100, 0, PI/2);
      float S = map(sin(s), 0, 1, 0, 50);

      ellipse(0, j, S, S);
      j+=0.001;
    }
    popMatrix();
  } 
}