class Encapsulate {
  String _name = '';
  int _age = 0;
  String breed = '';
  
  Encapsulate(String name,int age, String breed){
    //for private variable can be not use this keyword
    _name = name;
    _age = age;
    this.breed = breed;
  }
  
  void sayHai() => print('Hai my name if ${_name}. I am ${_age} years old, and I am a ${breed}');
  void _display(String message) => print('message ${message}');
  void saySomething(String message) => this._display(message);
}