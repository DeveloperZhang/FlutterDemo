class Animal{
  int _age=2;
  String name = "猫";
  void _getInfo(){
    print("getInfo name=$name,age=$_age");
  }
  void execGetInfo(){
    _getInfo();
  }

  void setAge(int age){
    this._age = age;
  }

  int getAge(){
    return this._age;
  }

  Animal(String name, int age){
    this._age = age;
    this.name = name;
  }
}