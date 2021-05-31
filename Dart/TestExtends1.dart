class Person{
  String name;
  num age;

  Person(this.name,this.age);

  void printInfo(){
    print("name is $name,age is $age");
  }
}

class Children extends Person{
  String sex = "children";
  Children(String name, num age, String sex):super(name, age){
    this.sex = sex;
  }

  @override
  void printInfo(){
    print("name is $name,age is $age,sex is $sex");
  }

  void getInfo(){
    print("name is $name,age is $age,sex is $sex");
  }
}


void main(){
  Children children = new Children("Tom", 30, "女");
  print(children.name);
  children.printInfo();
  children.getInfo();
}

