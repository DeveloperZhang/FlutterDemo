import 'lib/Person.dart';
import 'lib/Person1.dart' as lib;

import 'lib/myMath.dart' show getName;
import 'lib/myMath.dart' hide getAge;

main(){
  // Person p1=new Person('张三', 20);
  // p1.printInfo();
  //
  // lib.Person p2=new lib.Person('李四', 20);
  // p2.printInfo();

  getName();
  // getAge();

}