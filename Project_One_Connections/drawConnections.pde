void drawConnections(boolean[][] connectionsArray, int R, int G, int B){
  
  drawSwitchButtons();
  for (int i = 0; i < connectionsArray.length; i++) {
    for (int j = 0; j < connectionsArray[i].length; j++) {
      if(connectionsArray[i][j]){
        stroke(R,G,B);
        line(names[i].x, names[i].y, names[j].x, names[j].y);
      }
    }
  }
}
