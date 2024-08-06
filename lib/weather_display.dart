// lib/weather_display.dart
import 'package:flutter/material.dart';
import 'weather_model.dart';

class WeatherDisplay extends StatelessWidget {
  final Weather weather;

  const WeatherDisplay({Key? key, required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            weather.cityName,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.blue[800]),
          ),
          Text(
            '${weather.temperature}°C',
            style: TextStyle(fontSize: 32, color: Colors.blue[800]),
          ),
          Text(
            weather.description,
            style: TextStyle(fontSize: 24, color: Colors.blue[600]),
          ),
          Image.network(
            'http://openweathermap.org/img/wn/${weather.icon}@2x.png',
          ),
        ],
      ),
    );
  }
}
