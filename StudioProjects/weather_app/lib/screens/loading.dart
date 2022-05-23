import 'package:flutter/material.dart';
import 'package:weather_app/data/my_location.dart';
import 'package:weather_app/data/network.dart';
import 'package:weather_app/screens/weather_screen.dart';
const apikey = '815dd7fcc17efbad1fa702b81cb2c905';

class Loading extends StatefulWidget {

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  double latitude3;
  double longtitude3;

  @override
  void initState(){
    super.initState();
    getLocation();
  }


  void getLocation() async {
    MyLocation myLocation = MyLocation();
    await myLocation.getMyCurrentLocation();
    latitude3 = myLocation.latitude2;
    longtitude3 = myLocation.longtitude2;
    print(latitude3);
    print(longtitude3);

    Network network = Network('https://api.openweathermap.org/data/2.5/weather'
        '?lat=$latitude3&lon=$longtitude3&appid=$apikey&units=metric');
    var weatherData = await network.getJsonData();
    print(weatherData);
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return WeatherScreen(weatherData);
    }
    ));
  }
  // void fetchData() async {
  //     var myJson1 = parsingData['weather'][0]['description'];
  //     var myJson2 = parsingData['wind']['speed'];
  //     var myJson3 = parsingData['id'];
  //     print(myJson1);
  //     print(myJson2);
  //     print(myJson3);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: null,
            child: Text('Get my location',
              style: TextStyle(color: Colors.white),
            ),
          style: ElevatedButton.styleFrom(primary: Colors.blue),
        ),
      ),
    );
  }
}
