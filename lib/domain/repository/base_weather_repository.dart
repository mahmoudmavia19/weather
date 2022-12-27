// used to call high layer (domain) with low layer (data)
// solid principles (dependence inversion principle )
import 'package:weather/domain/entities/weather.dart';

abstract class BaseWeatherRepository{
  Future<Weather> getWeatherNyCityName(String cityName) ;
}