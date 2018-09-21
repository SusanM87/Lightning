int xStartH = 0;
int yStartH = 150;
int xNewH, yNewH;

int xStartV = 150;
int yStartV = 0;
int xNewV, yNewV;

double coin = Math.random();

void setup()
{
  size(400,400);
  background(95,220,240);
  reflections();
}

void mousePressed()
{
  xStartH = 0;
  yStartH = (int)(Math.random()*400)+1;
  
  yStartV = 0;
  xStartV = (int)(Math.random()*400)+1;
  
  coin = Math.random();
}

void draw()
{
  stroke(0);

  if (coin < .5)
    cracksH();
  else
    cracksV();
  
  window();
}

void cracksH()
{
  xNewH = xStartH;
  yNewH = yStartH;
  xStartH = xStartH + (int)(Math.random()*9)+1;
  yStartH = yStartH + (int)(Math.random()*19)-9;
  line(xNewH,yNewH,xStartH,yStartH);
}

void cracksV()
{
  xNewV = xStartV;
  yNewV = yStartV;
  xStartV = xStartV + (int)(Math.random()*19)-10;
  yStartV = yStartV + (int)(Math.random()*9)+1;
  line(xNewV,yNewV,xStartV,yStartV);
}

void window()
{
  fill(193,150,60);
  noStroke();
  rect(0,0,30,400);
  rect(370,0,400,400);
  rect(0,0,400,30);
  rect(0,370,400,400);
  rect(0,200,400,30);
  //shading
  fill(200,172,115);
  rect(365,230,10,140);
  rect(30,25,340,10);
  rect(365,25,10,175);
}

void reflections()
{
  stroke(152,229,240);
  strokeWeight(40);
  line(350,25,30,300);
  strokeWeight(20);
  line(400,160,0,500);
  strokeWeight(1);
}