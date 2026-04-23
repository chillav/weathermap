import 'package:flutter/material.dart';
import 'package:weathermap/home/widgets/weather_globe.dart';

//TODO сделать базовые стили, паддинги и цвета
class ForecastCard extends StatelessWidget {
  final DailyForecast forecast;

  const ForecastCard({super.key, required this.forecast});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Column(
      children: [
        Text(
          forecast.day,
          style: const TextStyle(color: Colors.white70, fontSize: 12),
        ),
        const SizedBox(height: 8),
        const Icon(Icons.cloud, color: Colors.white),
        const SizedBox(height: 8),
        Text(
          '${forecast.high}°',
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        Text(
          forecast.condition,
          style: const TextStyle(color: Colors.white70, fontSize: 10),
        ),
      ],
    );
  }
}
