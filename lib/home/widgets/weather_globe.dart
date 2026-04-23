class WeatherData {
  final String city;
  final String country;
  final int temperature;
  final String condition;
  final int windSpeed;
  final String sunrise;
  final String sunset;
  final List<HourlyForecast> hourly;
  final List<DailyForecast> daily;

  const WeatherData({
    required this.city,
    required this.country,
    required this.condition,
    required this.temperature,
    required this.windSpeed,
    required this.daily,
    required this.hourly,
    required this.sunrise,
    required this.sunset,
  });
}

class HourlyForecast {
  final String time;
  final int temperature;
  final String condition;

  const HourlyForecast({
    required this.time,
    required this.temperature,
    required this.condition,
  });
}

class DailyForecast {
  final String day;
  final int high;
  final int low;
  final String condition;

  const DailyForecast({
    required this.day,
    required this.high,
    required this.low,
    required this.condition,
  });
}

final mockWeather = WeatherData(
  city: 'Moscow',
  country: 'RU',
  temperature: 16,
  condition: 'Partly Cloudy',
  windSpeed: 12,
  sunrise: '6:4M',
  sunset: '6 PM',
  hourly: [
    HourlyForecast(time: '1 PM', temperature: 13, condition: 'cloudy'),
    HourlyForecast(time: '3 PM', temperature: 15, condition: 'sunny'),
    HourlyForecast(time: '5 PM', temperature: 18, condition: 'sunny'),
    HourlyForecast(time: '7 PM', temperature: 17, condition: 'rainy'),
    HourlyForecast(time: '9 PM', temperature: 19, condition: 'rainy'),
  ],
  daily: [
    DailyForecast(day: 'Tonight', high: 8, low: 8, condition: 'Mostly Cloudy'),
    DailyForecast(day: 'Tomorrow', high: 17, low: 17, condition: 'Chiefly Cloudy'),
    DailyForecast(day: 'Friday', high: 21, low: 21, condition: 'Partly Cloudy'),
  ],
);
