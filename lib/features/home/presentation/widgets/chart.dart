import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,  // Adjust height accordingly
      child: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 1),  // Example data points for Drought
                FlSpot(1, 2),
                FlSpot(2, 1.5),
                FlSpot(3, 1.8),
                FlSpot(4, 2.5),
              ],
              isCurved: true,

              belowBarData: BarAreaData(
                show: true,
                // colors: [
                //   Colors.brown.withOpacity(0.5),
                //   Colors.brown.withOpacity(0.2),
                // ],
                // gradientFrom: Offset(0, 0),
                // gradientTo: Offset(0, 1),
              ),
              dotData: FlDotData(show: false),  // Hide dots
              barWidth: 3,
            ),
            LineChartBarData(
              spots: [
                FlSpot(0, 1.5),  // Example data points for Flood
                FlSpot(1, 1.8),
                FlSpot(2, 2.2),
                FlSpot(3, 2.5),
                FlSpot(4, 2.8),
              ],
              isCurved: true,
              // colors: [Colors.blue],
              belowBarData: BarAreaData(
                show: true,
                // colors: [
                //   Colors.blue.withOpacity(0.5),
                //   Colors.blue.withOpacity(0.2),
                // ],
                // gradientFrom: Offset(0, 0),
                // gradientTo: Offset(0, 1),
              ),
              dotData: FlDotData(show: false),  // Hide dots
              barWidth: 3,
            ),
          ],
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 22,
                getTitlesWidget: (value, _) {
                  return Text(
                    '${value.toInt()}',
                    style: const TextStyle(color: Colors.black),
                  );
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 28,
                getTitlesWidget: (value, _) {
                  return Text(
                    '${value.toInt()}',
                    style: const TextStyle(color: Colors.black),
                  );
                },
              ),
            ),
          ),
          gridData: FlGridData(show: false),  // Hide grid lines
          borderData: FlBorderData(show: false),  // Hide borders
        ),
      ),
    );
  }
}
