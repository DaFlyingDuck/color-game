void mouseClicked() {
  
  if (mode == INTRO) {
    
    introclicked();
  
  } else if (mode == GAME) {
    
    gameclicked();
    
  } else if (mode == GAMEOVER) {
    
     gameoverclicked(); 
    
  }
  
}
