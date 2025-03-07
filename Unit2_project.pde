// Phoebe Xie unit2 project - Cute Cat & Bunny
int mountainX = 0;
int bunnyX = 700;
int bunnyY = 0;
float cloudX = 70;
float starY = 0;

void setup (){
  size(900, 900);
  background(123, 199, 242);  // Light blue sky
}


void draw (){
  background(123, 199, 242); 
  fill(71, 117, 58);
  rect(0,450,900, 450);// Clear previous frame
  mountainX -= 2;  // Move mountains left

  // Reset position smoothly to prevent gaps
  if (mountainX < -400) {  
    mountainX += 400;  // Shift forward instead of hard reset
  }

  // Draw two sets of mountains to create a continuous scrolling effect
  mountain(mountainX, 450);
  mountain(mountainX + 400, 450); 
  cat(200, 600);
  bunny(bunnyX, 600);// Draw another set slightly ahead
  stars(150, starY);
  
  bunnyX = bunnyX - 2;
  if (bunnyX < 300) {
    bunnyX = 300;
  }
 
  cloudX = cloudX +1;
  if (cloudX > 942.5){
 cloudX = 100;
 }
 
 clouds(cloudX, 50);
 
 starY = starY + 5;
 if (starY > 910){
   starY = -10;
 }

}

// Cute Cat
void cat(float x, float y){
  noStroke();

  //Cat Head
  fill(227, 180, 76);
  ellipse(x, y, 100, 100);  // Head at (x,y)

  //Shorter Cat Ears (Connected to the Head)
  fill(227, 180, 76);
  beginShape();
  vertex(x - 45, y - 25);   // Base of left ear
  vertex(x - 35, y - 60);   // Left ear tip (short)
  vertex(x - 20, y - 30);   // Right side of ear
  endShape(CLOSE);

  beginShape();
  vertex(x + 20, y - 30);   // Left side of right ear
  vertex(x + 35, y - 60);   // Right ear tip (short)
  vertex(x + 45, y - 25);   // Right ear base
  endShape(CLOSE);

  //Inner Ears (Pink)
  fill(255, 180, 190);
  beginShape();
  vertex(x - 40, y - 25);  
  vertex(x - 32, y - 45);
  vertex(x - 22, y - 28);
  endShape(CLOSE);

  beginShape();
  vertex(x + 22, y - 28);
  vertex(x + 32, y - 45);
  vertex(x + 40, y - 25);
  endShape(CLOSE);

  //Cat Eyes (Vertical)
  fill(0);
  ellipse(x - 15, y, 12, 20);
  ellipse(x + 15, y, 12, 20);

  //Cat Nose
  fill(255, 100, 100);
  triangle(x - 5, y + 15, x + 5, y + 15, x, y + 25);

  //Cat Mouth
  noFill();
  stroke(0);
  arc(x - 10, y + 30, 20, 10, 0, PI);
  arc(x + 10, y + 30, 20, 10, 0, PI);

  //Blush
  noStroke();
  fill(255, 170, 170, 150);
  ellipse(x - 30, y + 20, 15, 10);
  ellipse(x + 30, y + 20, 15, 10);

  // Light Whiskers
  stroke(180, 140, 90, 180);
  strokeWeight(1.5);
  line(x - 25, y + 18, x - 35, y + 16);
  line(x + 25, y + 18, x + 35, y + 16);
}


//Cute Bunny
void bunny(float x, float y){
  noStroke();

  // Bunny Head
  fill(255, 230, 200);
  ellipse(x, y, 100, 100);  // Head at (x,y)

  // Bunny Ears (Longer and Oval)
  fill(255, 230, 200);
  ellipse(x - 25, y - 50, 25, 60);  // Left ear
  ellipse(x + 25, y - 50, 25, 60);  // Right ear

  // Inner Ears (Pink)
  fill(255, 180, 190);
  ellipse(x - 25, y - 50, 15, 45);  // Left inner ear
  ellipse(x + 25, y - 50, 15, 45);  // Right inner ear

  // Bunny Eyes (Vertical)
  fill(0);
  ellipse(x - 15, y, 12, 20);
  ellipse(x + 15, y, 12, 20);

  // Bunny Nose (Tiny Dot)
  fill(255, 100, 100);
  ellipse(x, y + 15, 8, 8);

  // Bunny Mouth (Tiny "w" shape)
  noFill();
  stroke(0);
  arc(x - 5, y + 25, 10, 10, 0, PI);
  arc(x + 5, y + 25, 10, 10, 0, PI);

  // Blush
  noStroke();
  fill(255, 170, 170, 150);
  ellipse(x - 30, y + 20, 15, 10);
  ellipse(x + 30, y + 20, 15, 10);
}

void mountain(int x, int y){
  fill(60);  
  triangle(x, y, x+200, y-300, x+400, y);
  triangle(x+400, y, x+600, y-300, x+800, y);
  triangle(x+800, y, x+1000, y-300, x+1200, y);
}

void clouds(float x, float y){
  fill(225);
  ellipse(x, y, 70, 70);
  ellipse(x-25, y+10, 70, 70);
  ellipse(x+25, y+10, 70, 70);
  
  ellipse(x+300, y+100, 80, 80);
  ellipse(x+370, y+100, 80, 80);
  ellipse(x+330, y+70, 80, 80);
}

// define stars
void stars(float x, float y){
  fill(255, 255, 150);
  ellipse(100, y, 10, 10);
  ellipse(100 + 180, y, 8, 8);
  ellipse(100 + 400, y, 10, 10);
  ellipse(100 + 500, y + 5, 10, 10);
  ellipse(100 - 300, y - 160, 10, 10);
  ellipse(100 + 600, y, 10, 10);
  ellipse(100 + 700, y - 30, 10, 10);
  
  // Second batch of stars slightly offset in X and Y
  ellipse(300, y - 100, 10, 10);
  ellipse(300 + 180, y - 100, 8, 8);
  ellipse(300 + 400, y - 100, 10, 10);
  ellipse(300 + 500, y - 95, 10, 10);
  ellipse(300 - 300, y - 116, 10, 10);
  ellipse(300 + 600, y - 100, 10, 10);
  ellipse(300 + 700, y - 130, 10, 10);
  
  // Third batch
  ellipse(500, y - 200, 10, 10);
  ellipse(500 + 180, y - 200, 8, 8);
  ellipse(500 + 400, y - 200, 10, 10);
  ellipse(500 + 500, y - 195, 10, 10);
  ellipse(500 - 300, y - 216, 10, 10);
  ellipse(500 + 600, y - 200, 10, 10);
  ellipse(500 + 700, y - 230, 10, 10);
  
  ellipse(800, y - 200, 10, 10);
  ellipse(900 + 180, y - 200, 8, 8);
  ellipse(450 + 400, y - 200, 10, 10);
  ellipse(203 + 500, y - 195, 10, 10);
  ellipse(616 - 300, y - 216, 10, 10);
  ellipse(700 + 600, y - 200, 10, 10);
  ellipse(666 + 700, y - 230, 10, 10);
  
  ellipse(800, y - 200, 10, 10);
  ellipse(900 + 180, y - 500, 8, 8);
  ellipse(450 + 400, y - 560, 10, 10);
  ellipse(203 + 500, y - 821, 10, 10);
  ellipse(616 - 300, y - 616, 10, 10);
  ellipse(700 + 600, y - 300, 10, 10);
  ellipse(666 + 700, y - 203, 10, 10);   
}
