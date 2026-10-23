import 'package:flutter/material.dart';

class Primjer{
  final String naslov;
  final String opis;
  final IconData ikona;
  final WidgetBuilder graditelj;

  const Primjer({
    required this.naslov,
    required this.opis,
    required this.ikona,
    required this.graditelj,
  });
}

final List<Primjer> primjeri = [];