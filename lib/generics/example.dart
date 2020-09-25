void add<T>(T a, T b){
// T is represent of type, use any kind letters
// int sum = a + b; // eroor
// print(sum);
}

void addNumbers<T extends num>(T a, T b){
// T is represent of type, use any kind letters
// T is any class datatype that extend from num class (int, double)
// so there is no warning on sign "+"
  T sum = a + b;
  print(sum);
}

T substractCustom<T extends num>(T value, List<T> items){
  T ret = value;
  items.forEach((value){
    ret = ret + value;
    print(ret);
  });

  return ret;
}