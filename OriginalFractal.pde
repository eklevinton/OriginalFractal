int num = 50;
int col = 255;

public void setup()
{
  size(600, 600);
  background(0);
  
    
//  textSize(20);
//text("I LOVE YOU!", 50, 90); 
//fill(0, 408, 612);
  
}

public void draw()
{

  textSize(20);
text("I LOVE YOU!", 50, 90); 
fill(255, 102, 255);

  fill(0, 0, 0, 50);
  rect(-5, -5, 605, 605);
  noFill();
  stroke(col);
  strokeWeight(1);
  fractal(300, 300, 600);

textSize(20);
text("I LOVE YOU!", 50, 90); 
fill(255, 102, 255);
}


public void mousePressed()
{
  num = (int)(Math.random()*1000 + 5);
}

public void fractal(int x, int y, int rad)
{
  /*translate(x, y);
  stroke(255,0,0);
  strokeWeight(2);
  for(float t = 0; t <= 2*PI; t+=.01){ 
     point((-16*rad*pow(sin(t), 3)), (-13*rad*cos(t)-5*rad*cos(2*t)-2*rad*cos(3*t)-cos(4*t))); 
  }*/
  
  float rrad = 0.8 * rad;
  int bottomY = y+rad/2;
  
  smooth();
  stroke(255, 0,0);
  strokeWeight(2);
  beginShape();
  curveVertex(x, bottomY + rrad);
  curveVertex(x, bottomY);
  curveVertex(x - rrad/2, bottomY - rrad/1.5);
  curveVertex(x - rrad/3, bottomY - rrad);
  curveVertex(x, bottomY - rrad * .75);
  curveVertex(x, bottomY);
  endShape();

  beginShape();
  curveVertex(x, bottomY + rrad);
  curveVertex(x, bottomY);
  curveVertex(x + rrad/2, bottomY - rrad/1.5);
  curveVertex(x + rrad/3, bottomY - rrad);
  curveVertex(x, bottomY - rrad * .75);
  curveVertex(x, bottomY);
  endShape();
  
  if(rad <= num)
  {
    
  }
  else
  {
    fractal(x+rad/4, y, rad/2);
    fractal(x-rad/4, y, rad/2);
    fractal(x, y+rad/4, rad/2);
    fractal(x, y-rad/4, rad/2);
    col --;
   
  }
}
