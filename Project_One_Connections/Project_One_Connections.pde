int r = 500;
boolean overButton = false;
boolean overMainframeButton = false;
boolean overProjectOneButton = false;
boolean overSwitchboardButton = false;
boolean overDisplayAllButton = false;
int hoveredEntryNumber;

Entry names[] = new Entry[14];


void setup() {
  size(2000, 1300);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  fill(0);

  for (int i = 0; i < 14; i++) {
    names[i] = new Entry();
  }

  names[0].name  =  "Claire Evans";
  names[1].name  =  "Sherry Reson";
  names[2].name  =  "Charles Raisch";
  names[3].name  =  "Pam Hardt-English";
  names[4].name  =  "Mya Shone";
  names[5].name  =  "Chris Macie";
  names[6].name  =  "Chris Neustrup";
  names[7].name  =  "Grace Hopper";
  names[8].name  =  "Betty Holberton";
  names[9].name  =  "Ephrem Lipkin";
  names[10].name =  "Lee Felsenstein";
  names[11].name =  "Jane Speiser";
  names[12].name =  "Mary Janowitz";
  names[13].name =  "Joan Lefkowitz";


  for (int i = 0; i < names.length; i++) {
    float a = 360 - (360/names.length * i);

    float y = (sin(radians(a)) * r);
    float x = (cos(radians(a)) * r);

    names[i].x = x + width/2;
    names[i].y = y + height/2;
  }



  drawConnections(connectionsProjectOne, 254, 127, 45);
}

void draw() {
    //-------------------Boxfarbe--------------------
  for (int i = 0; i < names.length; i++) {
    fill(0);
    if (overButton && hoveredEntryNumber == i) {
      fill(255);
    }   
    noStroke();
    rect(names[i].x, names[i].y, textWidth(names[i].name) + 20, 40);
    
    //-------------------Textfarbe--------------------
    fill(255);
    if (overButton && hoveredEntryNumber == i) {
      fill(0);
    }
    text(names[i].name, names[i].x, names[i].y);
  }
}
