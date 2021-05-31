import 'bean/Animal.dart';

void main(){
  Animal animal = new Animal("dog", 2);
  print(animal.name);
  //print(animal._age)//错误，无法访问属性
  print("getAge:${animal.getAge()}");
  animal.execGetInfo();
}

