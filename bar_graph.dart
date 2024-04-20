import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_application_1/bargraph/bar_data.dart';

class MyBarGraph extends StatelessWidget {
  final List monthlySummary;
  const MyBarGraph({
    super.key,
    required this.monthlySummary,
  });

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
      janFo: monthlySummary[0],
      febFo: monthlySummary[1],
      marFo: monthlySummary[2],
      aprFo: monthlySummary[3],
      mayFo: monthlySummary[4],
      junFo: monthlySummary[5],
      julFo: monthlySummary[6],
      augFo: monthlySummary[7],
      sepFo: monthlySummary[8],
      octFo: monthlySummary[9],
      novFo: monthlySummary[10],
      decFo: monthlySummary[11],
    );
    myBarData.initialixeBarData();
    return BarChart(BarChartData(
        maxY: 300,
        minY: 0,
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
            show: true,
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
                sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: getBottomTitles,
            ))),
        barGroups: myBarData.barData
            .map(
              (data) => BarChartGroupData(x: data.x, barRods: [
                BarChartRodData(
                  toY: data.y,
                  color: Colors.pink,
                  width: 25,
                  borderRadius: BorderRadius.circular(4),
                  backDrawRodData: BackgroundBarChartRodData(
                    show: true,
                    toY: 300,
                    color: Color.fromARGB(255, 240, 174, 196),
                  ),
                ),
              ]),
            )
            .toList()));
  }
}

Widget getBottomTitles(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Colors.pink,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  Widget text = const SizedBox();
  switch (value.toInt()) {
    case 0:
      text = const Text(
        'Jan',
        style: style,
      );
      break;
    case 1:
      text = const Text(
        'Feb',
        style: style,
      );
      break;
    case 2:
      text = const Text(
        'Mar',
        style: style,
      );
      break;
    case 3:
      text = const Text(
        'Apr',
        style: style,
      );
      break;
    case 4:
      text = const Text(
        'May',
        style: style,
      );
      break;
    case 5:
      text = const Text(
        'Jun',
        style: style,
      );
      break;
    case 6:
      text = const Text(
        'Jul',
        style: style,
      );
      break;
    case 7:
      text = const Text(
        'Aug',
        style: style,
      );
      break;
    case 8:
      text = const Text(
        'Sep',
        style: style,
      );
      break;
    case 9:
      text = const Text(
        'Oct',
        style: style,
      );
      break;
    case 10:
      text = const Text(
        'Nov',
        style: style,
      );
      break;
    case 11:
      text = const Text(
        'Dec',
        style: style,
      );
      break;
  }
  return SideTitleWidget(
    child: text,
    axisSide: meta.axisSide,
  );
}
