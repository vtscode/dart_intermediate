class Animal {
  //private variable with _variable , cant acces outside this class
  String _name = '';

  // default constructor
  /* useful for pass information */
  /*
    Animal(){
      print('constructed');
      _name = 'sam';
    }
  */

  Animal(String name) {
    // _name will be replace with name value from outside params
    _name = name;
  }

  void SayHi(){
    if(_name.isEmpty){
      print('Hai');
    }else{
      print('Hi ${_name} nice to meet you');
    }
  }
}