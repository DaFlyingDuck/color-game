void game() {
  
  background(0);
  
  
  // match/not a match headers 
  fill(255);
  textAlign(CENTER, CENTER);
  textFont(titleFont);
  textSize(40);
  text("MATCH", 1 * width/4, 1 * height/8);
  text("NOT A MATCH", 3 * width/4, 1 * height/8);
  
  
  //divider line
  strokeWeight(5);
  stroke(255, 0, 0);
  rect(width/2 - 4, 0, 8, height);
  
  // Coloured Word Display
  textFont(titleFont);
  textSize(50 + 2.6 * timer);
  fill(colors[c]);
  text(words[w], width/2, 3 * height/4);
  
  
  // TIMER
  timer = timer + 1;
  if (timer > 60) mode = GAMEOVER;
  
  //SCORE
  fill(255);
  textAlign(CENTER, CENTER);
  textFont(titleFont);
  textSize(40);
  text("SCORE: " + score, width/2, 15 * height/16);
  
  
}

void gameclicked() {
  
  if (w == c && mouseX > 0 && mouseX < width/2 && mouseY > 0 && mouseY < height) {
    
    w = int(random(0, 6));
    tf = int(random(0,6));
    if (tf > 2) {
      c = int(random(0, 6));
    //} else if (tf < 3) {
    //  c = w;
    } else {
      print("same colour and word so randomized no more matter what");
    }
    
    timer = 0;
    score = score + 1;
    
    
  } else if (w != c && mouseX > width/2 && mouseX < width && mouseY > 0 && mouseY < height) {
    
    w = int(random(0, 6));
    tf = int(random(0,6));
    if (tf > 2) {
      c = int(random(0, 6));
    } else if (tf < 3) {
      c = w;
    } else {
      print("broken w and c");
    }
    
    timer = 0;
    score = score + 1;
    
  } else { 
    
    
    mode = GAMEOVER;
    
  }

  
  
}
