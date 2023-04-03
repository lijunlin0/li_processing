map m;
void setup()
{
  size(512,768);
  m=new map();
}
  static long updatems=0;
  static final int size=64;
  static final int BLEFT=1;
  static final int BRIGHT=2;
  static final int BDOWN=3;
void draw()
{
  background(255);
  m.move_down();
  long time = System.currentTimeMillis();
  if(time-updatems<0)
  {
    return;
  }
  updatems=time;
  if(keyPressed==true)
  {
    keyPressed=false;
    if(key=='a')
    {
      m.li.move_x(-size);
    }
    else if(key=='d')
    {
      m.li.move_x(size);
    }
  }
  background(255);
  m.m_draw();
}
