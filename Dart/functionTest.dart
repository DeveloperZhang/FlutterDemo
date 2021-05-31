void test(){
  print("我是test函数");
}

int getNumber(){
  return 1;
}

int getNumber1(int input){
  return input * 2;
}

//int? age表示 age允许为空
String getPersonInfo(String name,[int age, String sex="男"]){
  if(age!=null){
    return "name is $name,age is $age,sex is $sex";
  }
  return "name is $name,age unkonwn,sex is $sex";
}

String getPersonInfo1(String name,{int age, String sex="男"}){
  if(age!=null){
    return "name is $name,age is $age,sex is $sex";
  }
  return "name is $name,age unkonwn,sex is $sex";
}

//参数为函数
fun1(){
  print("fun1-----");
}
fun2(fun){
  fun();
}

//函数体为一行函数
testPrint() => print("testPrint");

//匿名行数
testHideFunc(){
  var printNum=() {
    print(123);
  };
  printNum();
  var printNum2 = (int i){
    print(i);
    return "aaa";
  };

  String str = printNum2(10);
  print(str);
}

//自执行方法
testExcuteSelf(){
  ((){
    print("我是自执行方法!");
  })();

  ((int n){
    print("n为$n");
  })(11);

}

/*
闭包：
1.全局变量特点:全局变量常驻内存、全局变量污染全局
2.局部变量的特点:不常驻内存会被垃圾机制回收，不会污染全局
想实现的功能：
1.常驻内存
2.不污染内存
产生了闭包，闭包可以解决这个问题
闭包：函数嵌套函数，内部函数会调用外部函数的变量或参数，
变量或参数不会被系统回收(不会释放内存)
闭包的写法：函数嵌套函数，并return 里面的函数，这样就形成了闭包
*/
testClosure(){
  fun(){
    var a = 123;
    return (){
      a++;
      print(a);
    };
  }

  var b = fun();
  b();
  b();
  b();
  var number = b();
  print(number);

}


testClosure1() {

  // 获取闭包
  var func = a();
  for (var i = 0; i < 5; i++) {
    // 执行闭包
    // func();
    
    print(func());
  }
  print('-' * 40);
  var func1 = b();
  for (var i = 0; i < 5; i++) {
    func1();
  }


}

// 声明一个无返回值类型、无参数的函数
a(){
  int count = 0;
  // 内部声明一个函数 : 闭包
  String printCount(){
    // 内部可以访问外部方法内的局部变量 count
    print(count++);
    return "$count";
  };
  // 返回闭包
  return printCount;

}

b(){
  int count = 22;
  // 声明一个闭包
  // (){
  //   print(--count);
  //  }

  // 将闭包返回
  return (){
    print(--count);
  };
}


void main(){
  testClosure1();
  // testClosure();
  // testExcuteSelf();
  // testHideFunc();
  // testPrint();
  // fun2(fun1);
  // print(getPersonInfo1("张三",age: 10));
  // test();
  // print(getNumber());
  // print(getNumber1(2));
  // print(getPersonInfo("张三"));
  // print(getPersonInfo("张三",10));
  // print(getPersonInfo("张三",20,"女"));
}