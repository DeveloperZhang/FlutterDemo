/*
通俗理解：泛型就是解决 类 接口 方法的复用性、以及对不特定数据类型的支持(类型校验)
*/

//编写一个函数，传入什么类型怎返回什么类型
/*
代码太冗余
String getDataString(String str){
  return str;
}
int getDataInt(int number){
  return number;
}
*/

T getData<T>(T t){
  return t;
}

class PrintClass<T>{
  List list = [];
  void add(T value){
    this.list.add(value);
  }
  void printInfo(){
    for(var i = 0; i < this.list.length; i++){
      print(this.list[i]);
    }
  }
}

abstract class Cache<T>{
  getByKey(String key);
  void setByKey(String key, T value);
}

class FileCache<T> implements Cache<T>{
  @override
  getByKey(String key) {
    return key;
  }

  @override
  void setByKey(String key, T value) {
    print("我是文件缓存 把key=${key}  value=${value}的数据写入到了文件中");
  }
}


main(){
  /*
  print(getData(1111));
  print(getData("22222"));

   */

  /*
  List list = [];
  list.add(12);
  list.add("好的");
  print(list);

  PrintClass p = new PrintClass();
  p.add(1);
  p.add(12);
  p.add("哈哈");
  p.printInfo();

   */

  FileCache fileCache = new FileCache();
  fileCache.setByKey('index', {"name":"张三"});

}