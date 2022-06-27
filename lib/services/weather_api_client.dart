import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weatherapp/model/weather_model.dart';


class WeatherApiClient{
  Future<Weather>? getCurrentWeather(String? location) async{
    var endPoint = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$location&appid=54ae83ea1d79b01423379f7e84f53493");

    var response = await http.get(endPoint);
    var body = jsonDecode(response.body);
    print(Weather.fromJson(body));
    return Weather.fromJson(body);


  }
}