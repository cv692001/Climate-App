import 'package:geolocator/geolocator.dart';

class Location {
  double longitude;
  double latitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position =
          await getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      print(position);
      longitude = position.longitude;
      latitude = position.latitude;
    } catch (e) {
      print(e);
    }
  }
}
