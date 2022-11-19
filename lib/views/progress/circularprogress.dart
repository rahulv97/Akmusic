import 'package:akmusicapp/helper/colorhelper.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SamplePage extends StatelessWidget {
  const SamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CircularPercentIndicator(
        radius: 100.0,
        startAngle: 10,
        lineWidth: 5.0,
        percent: 1,
        header: Text("Icon header"),
        backgroundColor: Colors.grey,
        progressColor: Colors.blue,
      ),
    );
  }
}
