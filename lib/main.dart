import 'package:bmi_calcolator/Screens/Homepage.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Myapp()));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return pmiScreen() ;
  }
}
