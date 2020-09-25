import 'package:dart_intermediate/inheritance/inheritmain.dart';

class InheritChild extends InheritParent{
  bool hasHair = true;
  bool hasBackBone = true;
  bool isWarmBlooded = true;

  void walk() => print('walking');

  void test(){
    print('testing in child');
    // super.test();
  }
}