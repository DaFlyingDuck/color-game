void intro() {

  
  
  //Title gif
  image(gif[f], 0, 0, width, height); 
    f = f + 1;
    if (f == numberOfFrames) f = 0;
    
    
  //Game title
  fill(255);
  textAlign(CENTER, CENTER);
  textFont(titleFont);
  textSize(70);
  text("COLOUR GAME", width/2, .9 * height/4);
 
  
  
  // Start Button
  textAlign(CENTER, CENTER);
  textFont(titleFont);
  textSize(50);
  text("START", width/2, 460);
  
  
}


void introclicked() {
  
  
  if (mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > 420 && mouseY < 500) {
    
    mode = GAME;  
    w = int(random(0, 6));
    c = int(random(0, 6));
  
  }
  
  
  
}
