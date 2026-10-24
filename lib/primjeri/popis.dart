import 'package:flutter/material.dart';

import 'imperativna_navigacija/unos.dart';

class Primjer {
  final String naslov;
  final WidgetBuilder navigator;

  const Primjer({
    required this.naslov,
    required this.navigator,
  });
}

final List<Primjer> primjeri = [
  Primjer(
    naslov: 'Imperativna navigacija',
    navigator: (context) => const ImperativnaNavigacija(),
  ),
];