import processing.pdf.*;

PFont font;

final int FONT_SIZE = 72;

void setup()
{
  size(400, 600);
  noLoop();
  font = createFont("LiberationSansNarrow-Regular.ttf", FONT_SIZE);
}

void draw()
{
  beginRecord(PDF, "output.pdf");

  String label = "JAZZ";
  background(255, 255, 255); // white
  int num_words = 1000;

  textAlign(CENTER, CENTER);
  
  for (int i = 0; i < num_words; i++)
  {
    fill(random(100, 200));
    float pos_x = random(0.0, width);
    float pos_y = random(0.0, height);
    float text_size = random(FONT_SIZE * 0.5, height * 0.4);
    //println("JAZZ at size " + text_size + " at (" + pos_x + ", " + pos_y + ")");
    
    pushMatrix();
    
    textSize(text_size);
    rotate(radians(random(0, 360)));
    text(label, pos_x, pos_y);
    
    popMatrix();
  }

  endRecord();
}

