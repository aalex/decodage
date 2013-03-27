import processing.pdf.*;

void setup()
{
  size(400, 600);
  noLoop();
}

void draw()
{
  beginRecord(PDF, "output.pdf"); 

  background(0);
  stroke(0, 0, 0);
  strokeWeight(width * 0.0001);
  
  
  int num_x = 30;
  int num_y = 40;
  for (int x = 0; x < num_x; x++)
  {
    for (int y = 0; y < num_y; y++)
    {
      fill(255 * (x / (float) num_x), 255 * (y / (float) num_y), 0);
      float pos_x = width * (x / (float) num_x) + width / num_x * 0.5;
      float pos_y = height * (y / (float) num_y) + height / num_y * 0.5;
      float diameter = width / num_x;
      ellipse(pos_x, pos_y, diameter, diameter);
    }
  }
  
  
  endRecord();
}

