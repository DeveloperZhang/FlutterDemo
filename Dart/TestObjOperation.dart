


/*
Dart中的对象操作符:
    ?     条件运算符 （了解）
    as    类型转换
    is    类型判断
    ..    级联操作 （连缀）  (记住)
*/


class Person{
  String name;
  num age;
  Person(this.name, this.age);
  void printInfo(){
    print("$name------${this.age}");
  }
}

class Children extends Person{
  Children(String name, num age):super(name,age);
}

main(){
  Person p = new Person("Fay", 18);
  p.printInfo();
  print("p is Person ${p is Person}");


  var p1;
  p1 = "";
  p1 = new Person("wt", 23);
  (p1 as Person).printInfo();

  Person p2 = new Person("secret", 22);
  p2.printInfo();
  p2.name = "weight";
  p2.age = 110;
  p2.printInfo();

  p2..name="weight.."
    ..age = 11
    ..printInfo();

  Children c1 = new Children("张三", 20);
  print(c1 is Children);
  print(c1 is Person);
  
}