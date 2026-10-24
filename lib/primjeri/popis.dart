class Primjer {
  final String naslov;
  final String putanja;

  const Primjer({required this.naslov, required this.putanja});
}

final List<Primjer> primjeri = [
  Primjer(naslov: 'Imperativna navigacija', putanja: '/imperativna'),
  Primjer(naslov: 'Deklarativna navigacija', putanja: '/proizvodi'),
  Primjer(naslov: 'Bottom navigation', putanja: '/bottom'),
  Primjer(naslov: 'Top navigation', putanja: '/tabovi'),
];
