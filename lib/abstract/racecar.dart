import 'car.dart';

class RaceCar extends Car{

  RaceCar(){
    this.hasHorn = true;
    this.hasWheels = true;
  }

  // void honk() => print('beep beep');
  void honk(){
    // on abstract we can implmented (changing) and inherit
    print('honk in racecar');
    super.honk();
  }
}