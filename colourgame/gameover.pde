void gameover() {
  
  //Changing background
  gmcolour = gmcolour + 1;
  if (gmcolour < 60) {
    background(#44C13E);
  } else if (gmcolour > 59 && gmcolour < 120) {
    background(#C13E5F);
  } else if (gmcolour > 119 && gmcolour < 180) {
    background(#3E81C1);
  } else if (gmcolour > 179 && gmcolour < 240) {
    background(#F2B736);
  } else {
    gmcolour = 0;
  }
  
  
  // GAMEOVER TITLE 
  fill(255);
  textAlign(CENTER, CENTER);
  textFont(titleFont);
  textSize(70);
  text("GAMEOVER U SUCK", width/2, 1 * height/4);
  
  //restart button
  noStroke();
  rect(width/2 - 100, height/2 - 30, 200, 100);
  if (mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > height/2 - 30 && mouseY < height/2 + 70) {
    fill(255, 0, 0);
  } else {
    fill(0);
  }
  textAlign(CENTER, CENTER);
  textFont(titleFont);
  textSize(60);
  text("Restart", width/2, height/2 + 15);
  
  //SCORE
  fill(255);
  textAlign(CENTER, CENTER);
  textFont(titleFont);
  textSize(60);
  text("SCORE: " + score, width/2, 6 * height/8 - 10);
  
  
  // HIGHSCORE
  if (score > highscore) highscore = score;
  fill(255);
  textAlign(CENTER, CENTER);
  textFont(titleFont);
  textSize(70);
  text("HIGHSCORE: " + highscore, width/2, 7 * height/8);
  
  
  
  
}


void gameoverclicked() {
  
  if (mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > height/2 - 30 && mouseY < height/2 + 70) {
    mode = INTRO;
    score = 0;
  }
  
  
}
