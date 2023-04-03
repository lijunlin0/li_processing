import java.util.Random;

class map
{
  //下落间隔
  static final int gap=300;
  //地图宽度
  static final int width=512;
  //地图高度
  static final int height=768;
  final int B_SIZE=7;
  //玩家
  block li;
  //障碍物
  block B[]=new block[B_SIZE];
  map()
  {
    li=new block(4,11);
    li.img=loadImage("grey.png");
    init_B();
  }
  //初始化障碍物
  void init_B()
  {      
    int num=get_rand();
     for(int i=0,j=0;i<=B_SIZE&&j<B_SIZE;i++)
    {
      if(i==num)
      {
        continue;
      }
      else
      {
        B[j]=new block(i,0);
        B[j].img=loadImage("pink.png");
        j++;
      }
    }
  }
  //得到随机值
  int get_rand()
  {
    Random r=new Random();
    return r.nextInt(B_SIZE);
  }
  //画图
  void m_draw()
  {
    li.b_draw();
    for(int i=0;i<B_SIZE;i++)
    {
      B[i].b_draw();
    }
  }
  //障碍物下落
  void move_down()
  {
    for(int i=0;i<B_SIZE;i++)
    {
      B[i].move_down();
    }
  }
}
