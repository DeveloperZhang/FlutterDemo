import 'bean/Person.dart';

void main(){
  // var person = new Person();
  var person = new Person("张三",10);
  person.name = "Jim";
  person.getInfo();

  var person1 = new Person.now();
  person1.getInfo();

  var person2 = new Person.setName("李四");
  person2.getInfo();

  var personOuter = new Person1();
  personOuter.getInfo();
}

class Person{
  int age = 20;
  String name = "Tom";
  void getInfo(){
    print("name is $name,age is $age");
  }
  /*


  //无参构造函数,构造函数只能有一个
  Person(){
    print("====Person start====");
    getInfo();
    print("====Person end====");
  }
  */

  // Person(int age, String name){
  //   this.age = age;
  //   this.name = name;
  //   print("====Person start====");
  //   getInfo();
  //   print("====Person end====");
  // }


  Person(this.name, this.age){
    print("====Person start====");
    getInfo();
    print("====Person end====");
  }

  //自定义类的命名构造函数
  Person.now(){
    print("我是命名构造函数now");
  }

  Person.setName(this.name){
    print("我是命名构造函数setName");
  }
}