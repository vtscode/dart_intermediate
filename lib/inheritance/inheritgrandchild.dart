import 'package:dart_intermediate/inheritance/inheritchild.dart';

class InheritGrandChild extends InheritChild{
  bool hasClaws = true;

  void grow() => print('grrrr');
  @override
  void test(){
    print('testing in grandchild');
    //super is keyword to acces parents class
    super.test(); // its a class we are inherit from. in this case InheritChild
  }
}