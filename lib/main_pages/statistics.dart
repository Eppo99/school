/// Example of a stacked area chart with custom area colors.
///
/// By default, the area skirt for a chart will be drawn with the same color as
/// the line, but with a 10% opacity assigned to it. An area color function can
/// be provided to override this with any custom color.
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneunion/my_tools/hex_color.dart';
import 'all_subjects.dart';

class Statistics extends StatefulWidget {

//  Statistics();
//
//  /// Creates a [LineChart] with sample data and no transition.
//  factory Statistics.withSampleData() {
//    return  Statistics(
////      _createSampleData(),
//      // Disable animations for image tests.
//    );
//  }


  @override
  State<Statistics> createState() => _StatisticsState();

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    var myFakeMobileData = [
       LinearSales(0, 195),
       LinearSales(1, 175),
       LinearSales(2, 240),
       LinearSales(3, 225),
       LinearSales(4, 245),
       LinearSales(5, 205),
       LinearSales(6, 195),
       LinearSales(7, 175),
       LinearSales(8, 240),
       LinearSales(9, 225),
       LinearSales(10, 245),
       LinearSales(11, 205),

    ];
    return [
       charts.Series<LinearSales, int>(
        id: 'Mobile',
        // colorFn specifies that the line will be green.
         fillColorFn: (_, __) => charts.MaterialPalette.red.shadeDefault.darker,
        colorFn: (_, __) => charts.Color.fromHex(code: "#FF7104"),
        areaColorFn: (_, __) =>
        charts.Color(r:255, g:113, b:4, a:66),
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: myFakeMobileData,
      ),
    ];
  }
  static List<charts.Series<LinearSales, int>> _createSampleData2() {
    var myFakeMobileData = [
      for(int i=0;i<16;i++)
       LinearSales(i, 195 +i%5*10- i%3 *20),


    ];
    return [
      charts.Series<LinearSales, int>(
        id: 'Mobile',
        // colorFn specifies that the line will be green.
        fillColorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        colorFn: (_, __) => charts.Color.fromHex(code: "#04FF4A"),
        areaColorFn: (_, __) =>
            charts.Color(r:34, g:240, b:0, a:66),
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: myFakeMobileData,
      ),
    ];
  }

}

class _StatisticsState extends State<Statistics> {
  final List<charts.Series> seriesList=Statistics._createSampleData();

  final bool animate=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Text("Моя статистика",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,fontFamily: 'SF Pro Display'),),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text("Сдача полного теста",
                      style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,fontFamily: 'SF Pro Display'),
                      ),
                  ),
                  Container(
                    margin: EdgeInsets.zero,
//          color: Colors.amber,
                    height:300,
//                      width: 400,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 100*11,
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              charts.LineChart(
                                Statistics._createSampleData(),
                                primaryMeasureAxis:
                                charts.NumericAxisSpec(renderSpec: charts.NoneRenderSpec()),
                                layoutConfig: charts.LayoutConfig(
                                    leftMarginSpec: charts.MarginSpec.fromPixel(maxPixel: 0,minPixel: 0),
                                    rightMarginSpec: charts.MarginSpec.fromPixel(maxPixel: 0,minPixel: 0),
                                    topMarginSpec: charts.MarginSpec.fromPixel(maxPixel: 0,minPixel: 0),
                                    bottomMarginSpec: charts.MarginSpec.fromPixel(maxPixel: 0,minPixel: 0)
                                ),

                                animate: false,
                                domainAxis: charts.NumericAxisSpec(
                                    showAxisLine: false, renderSpec: charts.NoneRenderSpec()),
                                defaultRenderer:
                                 charts.LineRendererConfig(areaOpacity: 90,radiusPx: 2,includeArea: true,strokeWidthPx: 3,includePoints: true,),

//            animate: animate
//            dateTimeFactory: const charts.LocalDateTimeFactory(),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      end: Alignment.topCenter,
                                      begin: Alignment.bottomCenter,
                                      colors: [
                                        Theme.of(context).scaffoldBackgroundColor.withOpacity(1),
                                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.0),
                                      ],
                                    )
                                ),
                                height:300 ,
                                width: 100*11,
                              ),
                              charts.LineChart(
                                Statistics._createSampleData(),
                                layoutConfig: charts.LayoutConfig(
                                    leftMarginSpec: charts.MarginSpec.fromPixel(maxPixel: 0,minPixel: 0),
                                    rightMarginSpec: charts.MarginSpec.fromPixel(maxPixel: 0,minPixel: 0),
                                    topMarginSpec: charts.MarginSpec.fromPixel(maxPixel: 0,minPixel: 0),
                                    bottomMarginSpec: charts.MarginSpec.fromPixel(maxPixel: 0,minPixel: 0)
                                ),

                                primaryMeasureAxis:
                                charts.NumericAxisSpec(renderSpec: charts.NoneRenderSpec()),
                                animate: false,
                                domainAxis: charts.NumericAxisSpec(
                                    showAxisLine: false, renderSpec: charts.NoneRenderSpec()),
                                defaultRenderer:
                                charts.LineRendererConfig(areaOpacity: 0,radiusPx: 2,includeArea: false,strokeWidthPx: 3,includePoints: true,),

//            animate: animate
//            dateTimeFactory: const charts.LocalDateTimeFactory(),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text("Результаты по предметам",
                      style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,fontFamily: 'SF Pro Display'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                      height: 40,
                      child:
                      ListView(
                        // This next line does the trick.
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[

                          for(int i=0;i<AllSubjects().subjects.length;i++)
                            InkWell(
                              onTap: (){setState(() {
                                current=i;
                              });},
                              child: Container(
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: taped(i),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                  child: Text(
                                    '${AllSubjects().subjects[i]}',
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      )
                  ),//2nd carousel

                  Container(
                    margin: EdgeInsets.zero,
//          color: Colors.amber,
                    height:250,
//                      width: 400,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 100*11,
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              charts.LineChart(
                                Statistics._createSampleData2(),
                                layoutConfig: charts.LayoutConfig(
                                    leftMarginSpec: charts.MarginSpec.fromPixel(maxPixel: 0,minPixel: 0),
                                    rightMarginSpec: charts.MarginSpec.fromPixel(maxPixel: 0,minPixel: 0),
                                    topMarginSpec: charts.MarginSpec.fromPixel(maxPixel: 0,minPixel: 0),
                                    bottomMarginSpec: charts.MarginSpec.fromPixel(maxPixel: 0,minPixel: 0)
                                ),
                                primaryMeasureAxis:
                                charts.NumericAxisSpec(renderSpec: charts.NoneRenderSpec()),
                                domainAxis: charts.NumericAxisSpec(
                                    showAxisLine: false, renderSpec: charts.NoneRenderSpec()),
                                defaultRenderer:
                                charts.LineRendererConfig(areaOpacity: 90,radiusPx: 2,includeArea: true,strokeWidthPx: 3,includePoints: true,),
                                animate: false,

//            animate: animate
//            dateTimeFactory: const charts.LocalDateTimeFactory(),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      end: Alignment.topCenter,
                                      begin: Alignment.bottomCenter,
                                      colors: [
                                        Theme.of(context).scaffoldBackgroundColor.withOpacity(1),
                                        Theme.of(context).scaffoldBackgroundColor.withOpacity(0.0),
                                      ],
                                    )
                                ),
                                height:300 ,
                                width: 100*11,
                              ),
                              charts.LineChart(
                                Statistics._createSampleData2(),
                                layoutConfig: charts.LayoutConfig(
                                    leftMarginSpec: charts.MarginSpec.fromPixel(maxPixel: 0,minPixel: 0),
                                    rightMarginSpec: charts.MarginSpec.fromPixel(maxPixel: 0,minPixel: 0),
                                    topMarginSpec: charts.MarginSpec.fromPixel(maxPixel: 0,minPixel: 0),
                                    bottomMarginSpec: charts.MarginSpec.fromPixel(maxPixel: 0,minPixel: 0)
                                ),
                                primaryMeasureAxis:
                                charts.NumericAxisSpec(renderSpec: charts.NoneRenderSpec()),
                                domainAxis: charts.NumericAxisSpec(
                                    showAxisLine: false, renderSpec: charts.NoneRenderSpec()),
                                defaultRenderer:
                                charts.LineRendererConfig(areaOpacity: 90,radiusPx: 2,includeArea: false,strokeWidthPx: 3,includePoints: true,),
                                animate: false,

//            animate: animate
//            dateTimeFactory: const charts.LocalDateTimeFactory(),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  int current=0;

 Color taped(int i){
  if(i==current) return HexColor("69CC6D");
  else  return Colors.white70;
}
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}