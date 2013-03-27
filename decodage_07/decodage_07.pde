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
  noFill();
  strokeWeight(width * 0.001);
  
  int num_x = 80;
  int num_y = 120;
  
  for (int x = 0; x < num_x; x++)
  {
    float pos_x = x / (float) num_x * width;
      // first anchor point:
      float x1 = pos_x;
      float y1 = 0;
      // first control point:
      float x2 = random(0, width);
      float y2 = height * 0.25; 
      // second control point:
      float x3 = random(0, width);
      float y3 = height * 0.75;
      // second anchor point:
      float x4 = pos_x;
      float y4 = height;
      bezier(x1, y1, x2, y2, x3, y3, x4, y4);
  }
  
  for (int y = 0; y < num_y; y++)
  {
    float pos_y = y / (float) num_y * height;
      // first anchor point:
      float x1 = 0;
      float y1 = pos_y;
      // first control point:
      float x2 = width * 0.25;
      float y2 = random(0, height); 
      // second control point:
      float x3 = width * 0.75;
      float y3 = random(0, height);
      // second anchor point:
      float x4 = width;
      float y4 = pos_y;
      bezier(x1, y1, x2, y2, x3, y3, x4, y4);
  } 
  endRecord();
}

