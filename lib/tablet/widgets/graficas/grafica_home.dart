import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class grafica extends StatelessWidget {
  MaterialColor mycolor = MaterialColor(
    Color.fromRGBO(229, 203, 206, 1).value,
    <int, Color>{
      50: Color.fromRGBO(229, 203, 206, 0.1),
      100: Color.fromRGBO(229, 203, 206, 0.2),
      200: Color.fromRGBO(229, 203, 206, 0.3),
      300: Color.fromRGBO(229, 203, 206, 0.4),
      400: Color.fromRGBO(229, 203, 206, 0.5),
      500: Color.fromRGBO(229, 203, 206, 0.6),
      600: Color.fromRGBO(229, 203, 206, 0.7),
      700: Color.fromRGBO(229, 203, 206, 0.8),
      800: Color.fromRGBO(229, 203, 206, 0.9),
      900: Color.fromRGBO(229, 203, 206, 1),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      title: "HOME",
      theme: ThemeData(
        primarySwatch: mycolor,
      ),
      home: graficahome(),
    );
  }
}

class graficahome extends StatefulWidget {
  const graficahome({super.key});

  @override
  State<graficahome> createState() => _graficahomeState();
}

class _graficahomeState extends State<graficahome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
    child:SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              primaryYAxis: NumericAxis(),
              series: <BarSeries>[
                BarSeries<Map<String, dynamic>, String>(
                  dataSource: generateData(),
                  xValueMapper: (datum, index) => datum['category'].toString(),
                  yValueMapper: (datum, index) => datum['value'],
                  dataLabelSettings: DataLabelSettings(
                    isVisible: true,
                    labelPosition: ChartDataLabelPosition.inside,
                  ),
                ),
              ],
            ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Tocaste el gráfico'),
                      content: Text('Aquí puedes agregar el contenido del cuadro de diálogo.'),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Cerrar'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
          ),
        ),
      ),
    );
  }

  List<Map<String, dynamic>> generateData() {
    return [
      {'category': 'nose', 'value': 8},
      {'category': 'pepe', 'value': 5},
      {'category': 'C', 'value': 10},
      // Puedes agregar más datos según sea necesario
    ];
  }
}