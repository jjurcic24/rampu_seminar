import 'package:flutter/material.dart';

class Sadrzaj extends StatelessWidget {
  final IconData ikona;
  final List<String> stavke;

  const Sadrzaj({super.key, required this.ikona, required this.stavke});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: stavke.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(ikona),
        title: Text(stavke[index]),
      ),
    );
  }
}