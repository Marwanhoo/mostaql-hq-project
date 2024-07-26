import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mostaql_hq_project/colors/app_colors.dart';

class BarChartSample6 extends StatelessWidget {
  const BarChartSample6({super.key});

  final betweenSpace = 0.2;

  BarChartGroupData generateGroupData(
      int x,
      double blueValue,
      double redValue,
      double yellowValue,
      ) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barRods: [
        BarChartRodData(
          fromY: 0,
          toY: blueValue,
          color: Colors.blue, // Matching the color in the image
          width: 5,
        ),
        BarChartRodData(
          fromY: blueValue + betweenSpace,
          toY: blueValue + betweenSpace + redValue,
          color: Colors.red, // Matching the color in the image
          width: 5,
        ),
        BarChartRodData(
          fromY: blueValue + betweenSpace + redValue + betweenSpace,
          toY: blueValue + betweenSpace + redValue + betweenSpace + yellowValue,
          color: Colors.yellow, // Matching the color in the image
          width: 5,
        ),
      ],
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10);
    String text;
    switch (value.toInt()) {
      case 0:
        text = '2015';
        break;
      case 1:
        text = '2016';
        break;
      case 2:
        text = '2017';
        break;
      case 3:
        text = '2018';
        break;
      case 4:
        text = '2019';
        break;
      case 5:
        text = '2020';
        break;
      case 6:
        text = '2021';
        break;
      default:
        text = '';
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10);
    String text;
    switch (value.toInt()) {
      case 0:
        text = '0K';
        break;
      case 10:
        text = '10K';
        break;
      case 20:
        text = '20K';
        break;
      case 30:
        text = '30K';
        break;
      case 40:
        text = '40K';
        break;
      case 50:
        text = '50K';
        break;
      case 60:
        text = "60K";
        break;
      default:
        text = '';
    }
    return Text(text, style: style);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 14),
          AspectRatio(
            aspectRatio: 2,
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceBetween,
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: leftTitles,
                      reservedSize: 30,
                    ),
                  ),
                  rightTitles: const AxisTitles(),
                  topTitles: const AxisTitles(),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: bottomTitles,
                      reservedSize: 20,
                    ),
                  ),
                ),
                barTouchData: BarTouchData(enabled: false),
                borderData: FlBorderData(show: false),
                gridData: FlGridData(
                    show: true,
                    drawVerticalLine: true,
                    verticalInterval: 1,
                    horizontalInterval: 10,

                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: AppColors.greyColor3,
                        strokeWidth: 1,
                        dashArray: [20, 4],
                      );
                    },
                    getDrawingVerticalLine: (value) {
                      return FlLine(
                        color: AppColors.greyColor3,
                        strokeWidth: 1,
                        dashArray: [20, 4],
                      );
                    }),
                barGroups: [
                  generateGroupData(0, 20, 10, 0), // 2015: blue to 20
                  generateGroupData(1, 20, 20, 0), // 2016: blue to 20, red to 40
                  generateGroupData(2, 20, 10, 0), // 2017: blue to 20, red to 30
                  generateGroupData(3, 20, 20, 10), // 2018: blue to 20, red to 40, yellow to 50
                  generateGroupData(4, 20, 0, 0), // 2019: blue to 20
                  generateGroupData(5, 10, 20, 10), // 2020: blue to 10, red to 30, yellow to 40
                  generateGroupData(6, 30, 10, 20), // 2021: blue to 30, red to 40, yellow to 60
                ],
                maxY: 60,
                extraLinesData: ExtraLinesData(
                  horizontalLines: [
                    HorizontalLine(
                      y: 0,
                      color: AppColors.greyColor3,
                      strokeWidth: 1,
                      dashArray: [20, 4],
                    ),
                    HorizontalLine(
                      y: 10,
                      color: AppColors.greyColor3,
                      strokeWidth: 1,
                      dashArray: [20, 4],
                    ),
                    HorizontalLine(
                      y: 20,
                      color: AppColors.greyColor3,
                      strokeWidth: 1,
                      dashArray: [20, 4],
                    ),
                    HorizontalLine(
                      y: 30,
                      color: AppColors.greyColor3,
                      strokeWidth: 1,
                      dashArray: [20, 4],
                    ),
                    HorizontalLine(
                      y: 40,
                      color: AppColors.greyColor3,
                      strokeWidth: 1,
                      dashArray: [20, 4],
                    ),
                    HorizontalLine(
                      y: 50,
                      color: AppColors.greyColor3,
                      strokeWidth: 1,
                      dashArray: [20, 4],
                    ),
                    HorizontalLine(
                      y: 60,
                      color: AppColors.greyColor3,
                      strokeWidth: 1,
                      dashArray: [20, 4],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
