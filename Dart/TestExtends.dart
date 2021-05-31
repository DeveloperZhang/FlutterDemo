class Person{
  String name = "张三";
  num age = 20;

  void printInfo(){
    print("name is $name,age is $age");
  }
}

class Children extends Person{

}



void main(){
  Children children = new Children();
  print(children.name);
  children.printInfo();
}

