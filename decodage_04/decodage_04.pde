import processing.pdf.*;

String[] text_lines;

void setup()
{
  size(400, 600);
  noLoop();
  text_lines = loadStrings("data.csv");
}

void draw()
{
  beginRecord(PDF, "output.pdf"); 

  background(255, 255, 255); // white
  stroke(0, 0, 0);
  strokeWeight(width * 0.01);
  float diameter = width * 0.1;
  
  for (int index = 0; index < text_lines.length; index++)
  {
    String[] tokens = split(text_lines[index], TAB);
    if (tokens.length == 2)
    {
      fill(255 * index / text_lines.length);
      float pos_x = map(int(tokens[0]), 0, 1000, 0, width);
      float pos_y = map(int(tokens[1]), 0, 1000, 0, height);
      ellipse(pos_x, pos_y, diameter, diameter);
    }
  }

  endRecord();
}

