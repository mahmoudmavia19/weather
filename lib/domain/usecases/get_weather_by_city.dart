import 'package:weather/domain/entities/weather.dart';
import 'package:weather/domain/repository/base_weather_repository.dart';
import 'package:weather/domain/usecases/base_usecase.dart';

class GetWeatherByCityName implements BaseUseCase<String,Weather>{
  final BaseWeatherRepository repository ;

  GetWeatherByCityName(this.repository);

  @override
  Future<Weather> execute(cityName) {
    return repository.getWeatherNyCityName(cityName);
  }

}