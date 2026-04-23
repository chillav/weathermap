import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weathermap/home/widgets/forecast_card.dart';
import 'package:weathermap/home/widgets/weather_globe.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: const Color(0xFF1B1B3A),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: mockWeather.daily
                .map((day) => ForecastCard(forecast: day))
                .toList(),
          ),
        ),
      ),
    );
  }
}