import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'series.dart';

class Chart extends StatelessWidget {
  final List<Series> data;

  Chart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<Series, String>> series = [
      charts.Series(
        id: "dummy",
        data: data,
        domainFn: (Series series, _) => series.year,
        measureFn: (Series series, _) => series.blue1,
        colorFn: (Series series, _) => series.barColor1,
      )
    ];

    return Container(
      height: 300,
      padding: EdgeInsets.all(25),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Column(
            children: <Widget>[
              Text(
                "BarChart",
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Expanded(
                child: charts.BarChart(series, animate: true),
              )
            ],
          ),
        ),
      ),
    );
  }
}
