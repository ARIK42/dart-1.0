import 'package:flutter/material.dart';
import 'series.dart';
import 'charts.dart';

import 'package:charts_flutter/flutter.dart' as charts;

class HomePage extends StatelessWidget {
  final List<Series> data = [
    Series(
      year: "2014",
      blue1: 100,
      barColor1: charts.ColorUtil.fromDartColor(Colors.amberAccent),
    ),
    Series(
      year: "2015",
      blue1: 75,
      barColor1: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Series(
      year: "2016",
      blue1: 50,
      barColor1: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    Series(
      year: "2017",
      blue1: 100,
      barColor1: charts.ColorUtil.fromDartColor(Colors.red),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chart(
          data: data,
        ),
      ),
    );
  }
}
