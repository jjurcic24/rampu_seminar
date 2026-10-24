import 'package:flutter/material.dart';
import 'rute.dart';
void main(){
  runApp(const RampuSeminarApp());
}

class RampuSeminarApp extends StatelessWidget{
  const RampuSeminarApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Navigacija u Flutteru',
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
      routerConfig: ruter,
    );
  }
}