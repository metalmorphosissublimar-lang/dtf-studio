
import 'package:flutter/material.dart';
import 'ui/screens/home_screen.dart';

void main() {
  runApp(DTFStudioPro());
}

class DTFStudioPro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DTF Studio PRO',
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
