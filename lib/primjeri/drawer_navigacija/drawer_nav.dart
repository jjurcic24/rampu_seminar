import 'package:flutter/material.dart';

class Odrediste {
  final String naziv;
  final IconData ikona;
  final IconData odabranaIkona;
  const Odrediste(this.naziv, this.ikona, this.odabranaIkona);
}

const List<Odrediste> odredista = [
  Odrediste('Pristigla pošta', Icons.inbox_outlined, Icons.inbox),
  Odrediste('Poslano', Icons.send_outlined, Icons.send),
  Odrediste('Skice', Icons.drafts_outlined, Icons.drafts),
  Odrediste('Arhiva', Icons.archive_outlined, Icons.archive),
  Odrediste('Smeće', Icons.delete_outline, Icons.delete),
];

class DrawerNavigacija extends StatefulWidget {
  const DrawerNavigacija({super.key});

  @override
  State<DrawerNavigacija> createState() => _DrawerNavigacijaState();
}

class _DrawerNavigacijaState extends State<DrawerNavigacija> {
  int _odabraniIndeks = 0;

  @override
  Widget build(BuildContext context) {
    final odabrano = odredista[_odabraniIndeks];

    return Scaffold(
      appBar: AppBar(title: Text(odabrano.naziv)),
      drawer: NavigationDrawer(
        selectedIndex: _odabraniIndeks,
        onDestinationSelected: (indeks) {
          setState(() => _odabraniIndeks = indeks);
          Navigator.pop(context);
        },
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 16, 16, 10),
            child: Text('Pošta', style: Theme.of(context).textTheme.titleSmall),
          ),
          for (final o in odredista)
            NavigationDrawerDestination(
              icon: Icon(o.ikona),
              selectedIcon: Icon(o.odabranaIkona),
              label: Text(o.naziv),
            ),
        ],
      ),
      body: SadrzajMape(naziv: odabrano.naziv, ikona: odabrano.odabranaIkona),
    );
  }
}

class SadrzajMape extends StatelessWidget {
  final String naziv;
  final IconData ikona;

  const SadrzajMape({super.key, required this.naziv, required this.ikona});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(ikona, size: 64),
          const SizedBox(height: 16),
          Text(naziv),
        ],
      ),
    );
  }
}