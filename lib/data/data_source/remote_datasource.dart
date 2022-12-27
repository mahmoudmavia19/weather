import 'package:dio/dio.dart';
import 'package:weather/core/utils/constances.dart';
import 'package:weather/data/models/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel> getWeatherByCityName(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel> getWeatherByCityName(String cityName)async {
    try{
      var response = await Dio().get('${AppConstance.baseUrl}?q=$cityName&appid=${AppConstance.appId}');
      print(response.data);
      var weather = WeatherModel.fromJson(response.data);
      print('--------------------------');
      print(weather.toMap());
          return weather;
    }catch(e){
      print(e);
      return WeatherModel(0, '', '', '', 0) ;
    }
  }



}