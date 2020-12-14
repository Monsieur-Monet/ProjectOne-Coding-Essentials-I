void drawSwitchButtons() {
  //button Mainframe
  fill(35, 61 ,77);
  noStroke();
  rect(80, 80, textWidth("Mainframe") + 20, 40);
  fill(255);
  text("Mainframe", 80, 80);

  //button ProjectOne
  fill(254 , 127, 45);
  noStroke();
  rect(80, 180, textWidth("Project One") + 20, 40);
  fill(255);
  text("Project One", 80, 180);

  //button Switchboard
  fill(252 , 202, 70);
  noStroke();
  rect(80, 280, textWidth("Switchboard") + 20, 40);
  fill(0);
  text("Switchboard", 80, 280);

  //button DisplayAll
  fill(0);
  noStroke();
  rect(80, 380, textWidth("Display all") + 20, 40);
  fill(255);
  text("Display all", 80, 380);
}

void checkSwitchButtons() {
  overMainframeButton = false;
  overProjectOneButton = false;
  overSwitchboardButton = false;
  overDisplayAllButton = false;

  if (dist(80, 80, mouseX, mouseY ) < 50) {
    overMainframeButton = true;
  }
  if (dist(80, 180, mouseX, mouseY ) < 50) {
    overProjectOneButton = true;
  }
  if (dist(80, 280, mouseX, mouseY ) < 50) {
    overSwitchboardButton = true;
  }
  if (dist(80, 380, mouseX, mouseY ) < 50) {
    overDisplayAllButton = true;
  }
}
