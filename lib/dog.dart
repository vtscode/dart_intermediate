class Dog{
  int age = 1;
  String name = 'fiddo';

  Dog(int age, String name){
    this.name = name;
    this.age = age;
  }

  int ageInDogYears() => age * 7;
}