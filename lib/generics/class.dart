class Counter <T extends num>{
  List<T> _items = new List<T>();

  void addAll(Iterable<T>iterable) => _items.addAll(iterable);
  void add(T value) => _items.add(value);

  T elementAt(int index) => _items.elementAt(index);

  void total(){
    num value = 0;
    _items.forEach((element) {
      value = value + element;
    });

    print(value);
  }
}

/*
* Make the following classes
Employee
Manager – inherit employee
Cashier – inherit employee
Payroll – use generics to allow only descendants of the employee class
Both the Cashier and Manager classes should have a “sayHello” function
* that prints the class name.
The payroll class should allow adding to an internal list,
* and a “print” function that calls the “sayHello” of each item in the internal list
* */
class Employee {
  void sayHai() => print('Hello from the Employee class');
}
class ManagerGeneric extends Employee{
  @override
  void sayHai() => print('Hello from the Manager class');
}
class Cashier extends Employee {
  @override
  void sayHai() => print('Hello from the Cashier class');
}
class Payroll<T extends Employee> {
  List<T> _employees = new List<T>();

  void add(T value) => _employees.add(value);
  void print() {
    _employees.forEach((T value){
      value.sayHai();
    });
  }
}