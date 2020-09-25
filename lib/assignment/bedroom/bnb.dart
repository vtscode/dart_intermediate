import 'house.dart';
import 'hotel.dart';

class BedAndBreakfast extends House implements Hotel {
  int guest = 3;
  int room = 3;
  void ringDoorbell() => print('ringing door bell');
}