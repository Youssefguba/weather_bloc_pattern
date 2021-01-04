part of 'weather_bloc.dart';

@immutable
abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];

}

// our initial state which will have no weather data because the user has not yet selected a city.
class WeatherInitial extends WeatherState {}

// a state which will occur while we are fetching the weather for a given city.
class WeatherLoadInProgress extends WeatherState {}

// a state which will occur if we were able to successfully fetch weather for a given city.
class WeatherLoadSuccess extends WeatherState {
  final Weather weather;

  const WeatherLoadSuccess({@required this.weather}) : assert(weather != null);

  @override
  List<Object> get props => [weather];
}

// a state which will occur if we were unable to fetch weather for a given city.
class WeatherLoadFailure extends WeatherState {}