import processing.pdf.*;

void setup()
{
  size(400, 600);
  noLoop();
}

void draw()
{
  beginRecord(PDF, "output.pdf");
  
  background(255, 255, 0);
  stroke(255, 127, 0); // orange
  strokeWeight(width * 0.001);
  float probability = 0.8;
 
  int x = 1;
  int increment = 1;
  while (x <= width)
  {
    x += increment;
    increment ++;
    if (random(0.0, 1.0) <= probability)
    {
      line(x, 0, x, height);
    }
  }
  int y = 1;
  increment = 1;
  while (y <= height)
  {
    y += increment;
    increment ++;
    if (random(0.0, 1.0)  <= probability)
    {
      line(0, y, width, y);
    }
  }
  
  endRecord();
}

