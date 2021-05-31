//类的初始化列表
class Rect{
  int width;
  int height;
  //冒号表示，多个初始化通过,逗号分隔
  Rect():height=3,width=2{
    print("Rect height=$height,width=$width");
  }
  area(){
    return this.height * width;
  }
}

void main(){
  Rect r = new Rect();
  print(r.area());
}