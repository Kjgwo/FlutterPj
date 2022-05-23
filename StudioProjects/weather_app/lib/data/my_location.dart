import 'package:geolocator/geolocator.dart';

class MyLocation{
  double latitude2;
  double longtitude2;

  Future<void> getMyCurrentLocation() async{
    try{
      Position position = await Geolocator.
      getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      latitude2 = position.latitude;
      longtitude2 = position.longitude;
      print(latitude2);
      print(longtitude2);
    }
    catch(e){
      print('There was a problem with the internet connection');
    }
  }
}