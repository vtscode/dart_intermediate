class StaticMember{
  /*
  * static variable and function cant acces from this keyword
  * because its not actually exist in the instance of the class, but
  * its exist in the blueprint  itself of the class
  * if u want to available on the class level, u can introduce static member
  * if u want instance member just create proper member of class not static
  * */
  static int _counter = 0;

  StaticMember(){
    _counter++;
    print('There are ${_counter} of us');
  }

  static void speak(){
    print('speaking');
    run();
  }

  static void run (){
    print('running');
  }
}