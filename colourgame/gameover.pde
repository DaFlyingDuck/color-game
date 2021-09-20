void gameover() {
  
  
  background(0,0,255);
  
  
  // GAMEOVER TITLE 
  fill(255);
  textAlign(CENTER, CENTER);
  textFont(titleFont);
  textSize(70);
  text("GAMEOVER U SUCK", width/2, height/2);
  
  
  
}


void gameoverclicked() {
  
  mode = INTRO;
  
  
}
