void checkButtons() {

  for (int i = 0; i < names.length; i++) {
    if (dist(names[i].x, names[i].y, mouseX, mouseY ) < 50) {
      overButton = true;
      hoveredEntryNumber = i;
      break;
    } else {
      overButton = false;
    }
  }

  checkSwitchButtons();
}

void mousePressed() {
  if (overButton) { 
    String[] list = split(names[hoveredEntryNumber].name, " ");
    link("https://google.com/" + "search?q=" + list[0] + "+" + list[1] + "+Resource+one"); //list [0] = Vorname // list [1] = Nachname
  }

  if (overMainframeButton) {
    background(200);
    drawConnections(connectionsMainframe, 35, 61, 77);
  }
  if (overProjectOneButton) {
    background(200);
    drawConnections(connectionsProjectOne, 254, 127, 45);
  }
  if (overSwitchboardButton) {
    background(200);
    drawConnections(connectionsSwitchboard, 252, 202, 70);
  }
  if (overDisplayAllButton) {
    background(200);
    drawConnections(connectionsMainframe, 35, 61, 77);
    drawConnections(connectionsProjectOne, 254, 127, 45);
    drawConnections(connectionsSwitchboard, 252, 202, 70);
    
  }
}

void mouseMoved() { 
  checkButtons();
}

void mouseDragged() {
  checkButtons();
}
