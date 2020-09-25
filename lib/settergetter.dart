class SetterGetter {
  String _name;
  int _age = 0;

  SetterGetter(String name,int age){
  _name = name;
  _age = age;
  }
//  getter and setter come int where acces private variable on class
  String get name => _name;
  void set name(String value) => _name = value;

  int get age => _age;
  void set age(int value) => _age = value * 7;

}