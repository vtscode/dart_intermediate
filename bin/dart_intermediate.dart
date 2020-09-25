import 'dart:io';

import 'package:dart_intermediate/dart_intermediate.dart' as mycode;
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dart_intermediate/myclass.dart';
import 'package:dart_intermediate/animal.dart';
import 'package:dart_intermediate/dog.dart';
import 'package:dart_intermediate/scope.dart';
import 'package:dart_intermediate/encapsulate.dart';
import 'package:dart_intermediate/settergetter.dart';
import 'package:dart_intermediate/staticmember.dart';
import 'package:dart_intermediate/inheritance/inheritgrandchild.dart';
import 'package:dart_intermediate/inheritance/grandchildall.dart';
import 'package:dart_intermediate/interface/manager.dart';
import 'package:dart_intermediate/abstract/racecar.dart';
import 'package:dart_intermediate/assignment/bedroom/bnb.dart';
import 'package:dart_intermediate/generics/example.dart';
import 'package:dart_intermediate/generics/class.dart';
import 'package:dart_intermediate/sync_async/index.dart';
import 'package:dart_intermediate/sync_async/access_file.dart';

void main(List<String> arguments) {
  // importBasic();
  // externalPack();

  // classBasic();
  // classContructor();
  // classThis();

  // ScopeClass();
  // EncapsulateClass();
  // SetterGetterClass();
  // StaticMemberClass();
  // InheritGrandChildClass();
  // MultiGrandChildClass();
  // InterfaceClass();
  // AbstractClass();
  // AssignmentClass();

  // Generics();
  // GenericsClass();

  DartIOFileSystem();
}

void importBasic(){
  print('Hello world: ${mycode.calculate()}!');
  mycode.sayHi();

  String myvalue = 'hai dunia';
  List ebytes = utf8.encode(myvalue);
  String encoded = base64.encode(ebytes);
  print('Encoded : ${encoded}');

  List dbytes = base64.decode(encoded);
  String decoded = utf8.decode(dbytes);
  print('Decoded : ${decoded}');
}
void externalPack(){
  var url = "https://rhivent.github.io";
  http.get(url).then((response) => {
    print('asd'),
    print('Response status : ${response.statusCode}'), // 200 means ok
    print('Response body : ${response.body}') // body
  });
}
void classBasic(){
  //create instance of the class
  MyClass mine = new MyClass();
  mine.sayHi('Riventus');

  MyClass yours = new MyClass();
  yours.sayHi('AHA');

  //not really a class
  print(mycode.calculate());
}
void classContructor(){
  Animal cat = new Animal('');
  Animal asd = new Animal('asdasd');
  cat.SayHi();
  asd.SayHi();
}
void classThis(){
  Dog bob = new Dog(6,'Bob');
  print('${bob.name} is ${bob.ageInDogYears()} dog years old');
}
void ScopeClass(){
  Scope cat = new Scope('niceee');

  for (int i = 0; i < 10; i++){
    print(i);
    if(i < 8){
      // int i = 5; // valid but causes issues
      if( i > 4){
        print('i is < 5 and > 4');
      }
    }
  }
}
void EncapsulateClass(){
  Encapsulate cat = new Encapsulate('fluffy',16,'Short hair');
  cat.breed = 'mixed';
  cat.sayHai();
  cat.saySomething('meowwwww');
}
void SetterGetterClass(){
  SetterGetter dog = new SetterGetter('Range',10);
  dog.name = 'akowkd';  // setter
  print(dog.name);  // getter

  print('Before : ${dog.age}'); //getter
  dog.age = 4;
  print('After : ${dog.age}');
}
void StaticMemberClass(){
  StaticMember cat = new StaticMember();
  StaticMember dog = new StaticMember();
  StaticMember bird = new StaticMember();
  StaticMember fish = new StaticMember();

  StaticMember.run();
}
void InheritGrandChildClass(){
  InheritGrandChild cat = new InheritGrandChild();
  cat.breath();
  cat.grow();
  cat.test();

  //  mixins : inherit multi class
}
void MultiGrandChildClass(){
  /*
  * mixin can be caling class containt with keyowrd
  * sp u can access varibale, n function from independet class,
  * multiclass in 1 child its mean multi parent just 1 child
  * and when u run same function it will execute LAST class of them not both
  * example test()
  * it will run from grandchild 2 cause after with keyword, the last class is
  * inheritgrandchild2
  * thats pitfall on the mixins (multiple inheritance)
  * */
  // What is polymorphism : when the same code can behave differently
  GrandChildAll haha = new GrandChildAll();
  haha.test();
  haha.breathFire;
}
void InterfaceClass(){
// interface is like contract between 2 classes
/*
  when we implement another class we must provide
  setter and getter with same name
*/
  Manager bob = new Manager();
  bob.test();

  /*
  * its kinda like inherit but we must put varibel, function
  * all which class we implemented
  * thats called interface and called with implements not extends
  * */
}
void AbstractClass(){
  // abstract : when a class has property declarations without implementation on that class

  /*
  * abstract mean an abstract consept
  * simmilar with interface but we can inherit from it
  *
  *
  * */
  RaceCar rc = new RaceCar();
  rc.honk();
}
void AssignmentClass(){
  BedAndBreakfast bnb = new BedAndBreakfast();
  bnb.room = 4;
  print(bnb.room);
  print(bnb.guest);
  bnb.ringDoorbell();
}

void Generics(){
  //classes that can use multiple types, the purposes using generic for code re-use
  List <int> numbers = new List<int>();
  numbers.addAll([12,31,23,23,12,32]);
  print(numbers);

  List <String> strings = new List<String>();
  strings.addAll(['asd','qwe','djf','wqioeu','qtaa','kxmzck']);
  print(strings);
  
  addNumbers<int>(3, 4);
  addNumbers<double>(1.0, 4.0);
  // addNumbers<String>('asd', 'qwe'); //eroor

  List<int>data = [1,2,3,4,5];
  int data2 = substractCustom<int>(8, data);
  print(data2);
}
void GenericsClass(){
  Counter<double>doubles = new Counter<double>();
  doubles.addAll([1,2,3,4,5]);
  doubles.total();

  Counter<int>ints = new Counter<int>();
  ints.addAll([123,42,5]);
  ints.total();

  ManagerGeneric m = new ManagerGeneric();
  Cashier c = new Cashier();
  Payroll p = new Payroll();
  p.add(m);
  p.add(c);
  p.print();
}

void DartIOFileSystem(){
  // // basic file system
  // DartIOSync();

  // accesing file write, and read
  Directory dir4 = Directory.current;
  print(dir4.path);

  File file = new File(dir4.path + '/myfile.txt');
  writeFile(file);
  readFile(file);
}