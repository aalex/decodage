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
  stroke(0);
  strokeWeight(width * 0.00001);
  
  int num = 100;
  PVector[] points = new PVector[num];
  for (int i = 0; i < num; i++)
  {
    points[i] = new PVector(random(0, width), random(0, height));
  }
  
  for (int i = 0; i < num; i++)
  {
    for (int j = 0; j < num; j++)
    {
      if (i != j)
      {
        line(points[i].x, points[i].y, points[j].x, points[j].y);
      }
    }
  }
  
  endRecord();
}

