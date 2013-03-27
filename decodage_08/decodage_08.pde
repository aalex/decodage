import processing.pdf.*;

void setup()
{
  size(400, 600);
  noLoop();
}

void draw()
{
  beginRecord(PDF, "output.pdf");

  background(255, 255, 255); // white
  stroke(0);
  strokeWeight(1);
  int num_x = 80;
  int num_y = 120;

  for (int x = 0; x < num_x; x++)
  {
    for (int y = 0; y < num_y; y++)
    {
      fill(random(127, 255), random(0, 127), random(0, 127));
      rect(x / (float) num_x * width, y / (float) num_y * height, width / (float) num_x, height / (float) num_y);
    }
  }
  endRecord();
}

