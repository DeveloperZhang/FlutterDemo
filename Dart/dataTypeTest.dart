void main() {
  /***
   *
   * dart是一个强大的脚本类语言，可以不预先定义变量类型 ，自动会类型推倒
   * dart中定义变量可以通过var关键字可以通过类型来申明变量
   * 如：
   */
  /**
   *

  //1. String
  var str = "Hello World!";
  String str1 = "Vicent";
  String str2 = str + str1;
  print(str);
  print(str1);
  print(str2);
  print(str + str1 + str2);

   */

  /**
   *

  //2.数字类型

  var int_a = 110;
  print(int_a);
  int a = 111;
  print(a);
   */

  /**
   *

  //3.double类型
  var double_b = 12.1;
  print(double_b);
  double b = 13.1;
  print("b is " + b.toString());

  double c = double_b + b;
  print("c is " + c.toString());
   */


  /*


  //4.bool类型
  
  bool flag1 = false;
  bool flag2 = true;
  
  print(flag2);

  print("$flag2");
 */

  /*


  //5.List类型

  var list = ["a", "b", "c"];
  print(list);

  for(var item  in list){
    print(item);
  }

  list.forEach((key) {
    print("key=$key");
  });

  List<int> list1 = [];
  list1.add(111);
  print(list1);

  var list2 = <int>[];
  list2.add(222);
  print(list2);
 */


  /*
  //6.Map类型
  var map1 = {
    "name":"张三",
    "age":20
  };

  print(map1);

  var map2 = {};
  map2["name"] = "李四";
  map2["age"] = 123;
  print(map2);

  map1.forEach((key, value) {
    print("key=$key,value=$value");
  });

   */


  /*
  //7.Set类型
  Set set = new Set();
  set.add("张三");
  set.add("张三");
  set.add("李四");
  print(set);


   */


  //8.类型判断
  var var1 = 12333;
  if(var1 is String){
    print("var1 is String");
  }else if(var1 is int){
    print("var1 is int");
  }else{
    print("var1 is other type");
  }



}