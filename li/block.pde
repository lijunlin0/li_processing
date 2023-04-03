class block
{
  long movems;
  //图片
  PImage img;
  //坐标
  int x;
  int y;
  block(int x,int y)
  {
    movems=0;
    this.x=x*size;
    this.y=y*size;
  }
  
  //画出方块
  void b_draw()
  {
    image(img,x,y);
  }
  //水平移动
  void move_x(int num)
  {
    if(is_invalid_x(num))
    x+=num;
  }
  //下落
  void move_down()
  {
    if(updatems-movems<map.gap)
    {
      return;
    }
    movems=updatems;
    
    if(y+size<768)
    y+=size;
  }
  
  //是否越界
  boolean is_invalid_x(int num)
  {
    if(num>0)
    {
      return x+size<512;
    }
    else
    {
      return x-size>=0;
    }
  }
}
