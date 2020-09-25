class Scope {
  String name = '';

  Scope(String name){
    String name = 'bob'; // ignore params name
    this.name = name;

    print(name);
  }

}