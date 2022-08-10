import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Color.fromRGBO(237, 237, 237, 100),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.space_dashboard),
                      label: Text("Dashboard"),
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.create_new_folder_outlined),
                      label: Text("Progress"),
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.workspaces_outline),
                      label: Text("Projects"),
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.message),
                      label: Text("Messages"),
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Container(
                      child: Text('<Chart>'),
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    child: DataTable(
                      columns: const <DataColumn>[
                        DataColumn(
                          label: Text(
                            'Sr.No',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Website',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Tutorial',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Review',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                      rows: const <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(
                              Text('1'),
                            ),
                            DataCell(
                              Text('https://flutter.dev/'),
                            ),
                            DataCell(
                              Text('Flutter'),
                            ),
                            DataCell(
                              Text('5*'),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(
                              Text('2'),
                            ),
                            DataCell(
                              Text('https://dart.dev/'),
                            ),
                            DataCell(
                              Text('Dart'),
                            ),
                            DataCell(
                              Text('5*'),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(
                              Text('3'),
                            ),
                            DataCell(
                              Text('https://pub.dev/'),
                            ),
                            DataCell(
                              Text('Flutter Packages'),
                            ),
                            DataCell(
                              Text('5*'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      width: 10.0,
                      height: 10.0,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.currency_bitcoin),
                      label: Text("RM35000: Weekly Design Profit"),
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                    ),
                    SizedBox(
                      width: 10.0,
                      height: 10.0,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.currency_bitcoin),
                      label: Text("RM20000: Monthly Development Profit"),
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
