import 'package:weather/data/data_source/remote_datasource.dart';
import 'package:weather/domain/entities/weather.dart';

import '../../domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
      final BaseRemoteDataSource remoteDataSource ;
      WeatherRepository(this.remoteDataSource);
  @override
  Future<Weather> getWeatherNyCityName(String cityName) async{
    return (await remoteDataSource.getWeatherByCityName(cityName));
  }

}