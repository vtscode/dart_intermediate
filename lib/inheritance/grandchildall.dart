import 'inheritgrandchild.dart';
import 'inheritgrandchild2.dart';
import 'inheritgrandchild3.dart';

class GrandChildAll extends InheritGrandChild with InheritGrandChild3, InheritGrandChild2{

  bool glowInDark = true;

  @override
  void test(){
    print('Test called in all grandchild');
    //super is keyword to acces parents class
    super.test(); // its a class we are inherit from. in this case InheritChild
  }
}