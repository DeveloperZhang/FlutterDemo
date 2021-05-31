//运算符
void main(){

  //常规计算运算符
  /*


  int a = 13;
  int b = 5;
  print(a+b);
  print(a-b);
  print(a*b);
  print(a/b);  //结果是小数
  print(a%b);
  print(a~/b);  // a/b 取整
 */

  /*


  //! 取反
  bool flag = false;
  print(!flag);
   */

  //赋值运算符

  /*


  //??== 标识左边如果为空,将右边复制给左边
  var c;
  c??=22;
  print("$c");

   */

  /*


  //三目运算符
  bool flag = false;
  print(flag?"我是flag:$flag":"我不是flag");

   */

  //??运算符
  var c;
  //如果c没有定义则10赋值给c2
  var c2 = c ?? 10;
  print("??运算符 $c2");

}