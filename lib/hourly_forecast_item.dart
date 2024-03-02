import 'package:flutter/material.dart';

class HourlyForecastItem extends StatelessWidget {
  final String time;
  final IconData cloud;
  final String temp;

  const HourlyForecastItem({
    super.key,
    required this.time,
    required this.cloud,
    required this.temp,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(
              time,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 2),
            Icon(
              cloud,
              size: 32,
            ),
            const SizedBox(height: 2),
            Text(
              temp,
              style: const TextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
