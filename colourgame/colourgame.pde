// Taiki Shickele
// September 21 2021
// Colour Game



int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;

PFont titleFont;

PImage[] gif;
int numberOfFrames;
int f;

String[] words;

color[] colors;

color red = #FF0000;
color blue = #0000FF;
color green = #00FF00;
color yellow = #FFFF00;
color orange = #FFAA00;
color purple = #BA0EC4;

int w;
int c;
int tf;

float timer;

int score;
int highscore;



void setup() {
  
  size(800,600);
  titleFont = createFont("Royalacid.ttf", 50);
  
  numberOfFrames = 30;
  gif = new PImage[numberOfFrames];
  
  int i = 0;
  while (i < numberOfFrames) {
    
    gif[i] = loadImage("frame_" + i + "_delay-0.03s.gif");   
    i = i + 1;
    
  }
  
  
  

  
  words = new String[6];
  colors = new color[6];
 
  words[0] = "red";
  words[1] = "blue";
  words[2] = "green";
  words[3] = "yellow";
  words[4] = "orange";
  words[5] = "purple";
  
  colors[0] = red;
  colors[1] = blue;
  colors[2] = green;
  colors[3] = yellow;
  colors[4] = orange;
  colors[5] = purple;
  

  
  mode = INTRO;
  
  
}


void draw() {
  
  if (mode == INTRO) {
    
    intro();
    
  } else if (mode == GAME) {
    
    game();
    
    
    
  } else if (mode == GAMEOVER) {
    
    gameover();
    
    
    
  } else {
    
    text("mode is fked up", width/2, height/2);
    
  }
  
 
  
}
