// Phoebe Xie unit2 project

void setup (){
  size(900, 900);
  background(123, 199, 242);  // Light blue sky
}

void draw (){
  cat();
}

void cat(){
  noStroke();

  // 🟡 Cat Head (Lower position)
  fill(227, 180, 76);
  ellipse(200, 600, 100, 100);  // Head at (200,600)

  // 🔺 Shorter Cat Ears (Tilted and Connected to the Head)
  fill(227, 180, 76);
  // Left ear (shorter version)
  beginShape();
  vertex(155, 575);   // Base of left ear (touching head)
  vertex(165, 540);   // Left ear tip (lowered)
  vertex(185, 570);   // Right side of ear, connecting back to the head
  endShape(CLOSE);

  // Right ear (shorter version)
  beginShape();
  vertex(215, 570);   // Left side of right ear, touching head
  vertex(235, 540);   // Right ear tip (lowered)
  vertex(245, 575);   // Right ear base, connecting to the head
  endShape(CLOSE);

  // 🎀 Inner Ears (Pink, adjusted to fit the shorter ears)
  fill(255, 180, 190);
  // Left inner ear
  beginShape();
  vertex(160, 573);  
  vertex(170, 550);
  vertex(180, 570);
  endShape(CLOSE);

  // Right inner ear
  beginShape();
  vertex(220, 570);
  vertex(230, 550);
  vertex(240, 573);
  endShape(CLOSE);

  // 👀 Cat Eyes (Vertical Black Ellipses, No Highlights)
  fill(56, 49, 34);
  ellipse(185, 600, 12, 20);  // Left vertical eye
  ellipse(215, 600, 12, 20);  // Right vertical eye

  // 🐱 Cat Nose
  fill(125, 103, 79);
  triangle(195, 615, 205, 615, 200, 625);

  // 😺 Cat Mouth (Simple Smile)
  noFill();
  stroke(0);
  arc(190, 630, 20, 10, 0, PI); // Left mouth
  arc(210, 630, 20, 10, 0, PI); // Right mouth

  // 🌸 Blush (Soft Pink Cheeks)
  noStroke();
  fill(255, 170, 170, 150);  // Light pink, slightly transparent
  ellipse(170, 620, 15, 10);  // Left blush
  ellipse(230, 620, 15, 10);  // Right blush

  // 🐾 Light Whiskers (Subtle & Short)
  stroke(180, 140, 90, 180);  // Light brown, semi-transparent
  strokeWeight(1.5);
  // Left whisker
  line(175, 618, 165, 616);
  // Right whisker
  line(225, 618, 235, 616);
}
