import 'employee.dart';

class Manager implements Employee{
  String name= 'bob';

  // void test() => print('This is manager');
  void test() {
    print('This is manager');
    print(super.toString()); // instance of manager not Employee
  }

}