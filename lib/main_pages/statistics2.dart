import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample2 extends StatefulWidget {
  final weekDays = const ['Sat', 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri'];

  const LineChartSample2({Key? key}) : super(key: key);

  @override
  _LineChartSample2State createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  bool showAvg = false;
  late double touchedValue;


  @override
  void initState() {
    touchedValue = -1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
              color: Color(0xff232d37)),
          child: Padding(
            padding: const EdgeInsets.only(
                right: 18.0, left: 12.0, top: 24, bottom: 12),
            child: LineChart(mainData()
            ),
          ),
        ),
      ],
    );
  }

  LineChartData mainData() {
    return LineChartData(

      clipData:FlClipData.all(),
      lineTouchData: LineTouchData(
//        touchCallback: (FlTouchEvent event,  touchResponse) {
//          touchResponse=Li
//          if (event is FlTapUpEvent) {
////            return;
//            // handle tap here
//          }
//
//        },



                  handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(

//              tooltipBgColor: Colors.blueAccent,
            getTooltipItems: (List<LineBarSpot> touchedBarSpots) {
              return touchedBarSpots.map((barSpot) {
                final flSpot = barSpot;
                return LineTooltipItem(
                  '${widget.weekDays[flSpot.x.toInt()]} \n',
                  const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: flSpot.y.toString(),
                      style: TextStyle(
                        color: Colors.grey[100],
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const TextSpan(
                      text: 'calories',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                );
              }).toList();
            }),
      ),
      gridData: FlGridData(show: false),
      titlesData: FlTitlesData(show: false),
      borderData: FlBorderData(show: false),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
//          colors: [Colors.redAccent],
          barWidth: 1,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors: [
              Color(0xFFFF7104).withOpacity(0.3),
              Color(0xFFFF7104).withOpacity(0.0),
            ],
//            gradientColorStops: [0.5, 1.0],
            gradientFrom: const Offset(0, 0),
            gradientTo: const Offset(0, 1),
          ),
        ),
      ],
    );
  }

//  LineChartData avgData() {
//    return LineChartData(
//      lineTouchData: LineTouchData(enabled: false),
//      gridData: FlGridData(
//        show: true,
//        drawHorizontalLine: true,
//        getDrawingVerticalLine: (value) {
//          return FlLine(
//            color: const Color(0xff37434d),
//            strokeWidth: 1,
//          );
//        },
//        getDrawingHorizontalLine: (value) {
//          return FlLine(
//            color: const Color(0xff37434d),
//            strokeWidth: 1,
//          );
//        },
//      ),
//      titlesData: FlTitlesData(
//        show: true,
//        bottomTitles: SideTitles(
//          showTitles: true,
//          reservedSize: 22,
//          getTextStyles: (context, value) => const TextStyle(
//              color: Color(0xff68737d),
//              fontWeight: FontWeight.bold,
//              fontSize: 16),
//          getTitles: (value) {
//            switch (value.toInt()) {
//              case 2:
//                return 'MAR';
//              case 5:
//                return 'JUN';
//              case 8:
//                return 'SEP';
//            }
//            return '';
//          },
//          margin: 8,
//          interval: 1,
//        ),
//        leftTitles: SideTitles(
//          showTitles: true,
//          getTextStyles: (context, value) => const TextStyle(
//            color: Color(0xff67727d),
//            fontWeight: FontWeight.bold,
//            fontSize: 15,
//          ),
//          getTitles: (value) {
//            switch (value.toInt()) {
//              case 1:
//                return '10k';
//              case 3:
//                return '30k';
//              case 5:
//                return '50k';
//            }
//            return '';
//          },
//          reservedSize: 32,
//          interval: 1,
//          margin: 12,
//        ),
//        topTitles: SideTitles(showTitles: false),
//        rightTitles: SideTitles(showTitles: false),
//      ),
//      borderData: FlBorderData(
//          show: true,
//          border: Border.all(color: const Color(0xff37434d), width: 1)),
//      minX: 0,
//      maxX: 11,
//      minY: 0,
//      maxY: 6,
//      lineBarsData: [
//        LineChartBarData(
//          spots: const [
//            FlSpot(0, 3.44),
//            FlSpot(2.6, 3.44),
//            FlSpot(4.9, 3.44),
//            FlSpot(6.8, 3.44),
//            FlSpot(8, 3.44),
//            FlSpot(9.5, 3.44),
//            FlSpot(11, 3.44),
//          ],
//          isCurved: true,
//          colors: [
//            ColorTween(begin: gradientColors[0], end: gradientColors[1])
//                .lerp(0.2)!,
//            ColorTween(begin: gradientColors[0], end: gradientColors[1])
//                .lerp(0.2)!,
//          ],
//          barWidth: 5,
//          isStrokeCapRound: true,
//          dotData: FlDotData(
//            show: false,
//          ),
//          belowBarData: BarAreaData(show: true, colors: [
//            ColorTween(begin: gradientColors[0], end: gradientColors[1])
//                .lerp(0.2)!
//                .withOpacity(0.1),
//            ColorTween(begin: gradientColors[0], end: gradientColors[1])
//                .lerp(0.2)!
//                .withOpacity(0.1),
//          ]),
//        ),
//      ],
//    );
//  }
}
