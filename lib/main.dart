import 'package:flutter/material.dart';
import 'pocetni.dart';

void main(){
  runApp(const RampuSeminarApp());
}

class RampuSeminarApp extends StatelessWidget{
  const RampuSeminarApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          brightness: Brightness.dark,
        ),
      ),
      home: const Pocetni(),
    );
  }
}