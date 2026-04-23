import 'package:flutter/material.dart';
import 'package:weathermap/home/widgets/forecast_card.dart';
import 'package:weathermap/home/widgets/temperature_circle.dart';

import 'mock_weather.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1B3A), //TODO вынести
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: _buildContent(),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      children: [
        TemperatureCircle(
          temperature: mockWeather.temperature,
          sunrise: mockWeather.sunrise,
          sunset: mockWeather.sunset,
        ),
        Text(
          'Hello! ${mockWeather.city}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
          ), //TODO вынести
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: mockWeather.daily
              .map((day) => ForecastCard(forecast: day))
              .toList(),
        ),
      ],
    );
  }
}
