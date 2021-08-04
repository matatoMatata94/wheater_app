import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  void getDate() async {
    http.Response response = await http.get(
        'api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid={API key}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
