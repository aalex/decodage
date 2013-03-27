import processing.pdf.*;

String[] text_lines;
PFont font;

void setup()
{
  size(400, 600);
  noLoop();
  text_lines = loadStrings("data.csv");
  font = createFont("LiberationSansNarrow-Regular.ttf", 72);
}

void draw()
{
  beginRecord(PDF, "output.pdf");

  background(255, 127, 127);
  
  for (int index = 0; index < text_lines.length; index++)
  {
    String[] tokens = split(text_lines[index], TAB);
    if (tokens.length == 3)
    {
      float pos_x = map(int(tokens[0]), 0, 500, 0, width - 100);
      float pos_y = map(int(tokens[1]), 0, 500, 0, height - 100);
      String label = tokens[2];
      fill(150);
      
      float offset_x = 0;
      for (int c = 0; c < label.length(); c++)
      {
        float text_size = random(24, 36);
        offset_x += text_size * 0.5;
        textSize(text_size);
        pushMatrix();
        translate(pos_x + offset_x, pos_y);
        rotate(radians(random(-20, 20)));
        text(label.charAt(c), 0, 0);
        popMatrix();
      }
    }
  }

  endRecord();
}

