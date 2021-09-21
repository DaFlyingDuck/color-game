void gameover() {
  
  
  background(0,0,255);
  
  
  // GAMEOVER TITLE 
  fill(255);
  textAlign(CENTER, CENTER);
  textFont(titleFont);
  textSize(70);
  text("GAMEOVER U SUCK", width/2, height/2);
  
  // HIGHSCORE
  if (score > highscore) highscore = score;
  fill(255);
  textAlign(CENTER, CENTER);
  textFont(titleFont);
  textSize(70);
  text("HIGHSCORE: " + highscore, width/2, 6 * height/8);
  score = 0;
  
  
  
}


void gameoverclicked() {
  
  mode = INTRO;
  
  
}
