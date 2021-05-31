/*
const值不变 一开始就得赋值
final 可以开始不赋值 只能赋一次 ; 而final不仅有const的编译时常量的特性，
最重要的它是运行时常量，并且final是惰性初始化，即在运行时第一次使用前才初始化
永远不改量的量，请使用final或const修饰它，而不是使用var或其他变量类型。
 */
void main(){
  //const 常量
  // const const_1 = 100;
  //Constant variables can't be assigned a value.
  //const_1=101; //错误，const修饰的常量不可以修改


  //final 常量
  // final final_1 = 110;
  //Constant variables can't be assigned a value.
  //final_1=111;//错误，const修饰的常量不可以修改

  final currentTime_final = new DateTime.now();
  print(currentTime_final);
}