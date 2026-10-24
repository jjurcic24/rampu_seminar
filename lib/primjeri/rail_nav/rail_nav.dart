import 'package:flutter/material.dart';

class Odrediste {
  final String naziv;
  final IconData ikona;
  final IconData odabranaIkona;

  const Odrediste(this.naziv, this.ikona, this.odabranaIkona);
}

const List<Odrediste> railOdredista = [
  Odrediste('Početna', Icons.home_outlined, Icons.home),
  Odrediste('Pretraga', Icons.search, Icons.search),
  Odrediste('Favoriti', Icons.favorite_outline, Icons.favorite),
  Odrediste('Profil', Icons.person_outline, Icons.person),
];

class RailNav extends StatefulWidget {
  const RailNav({super.key});

  @override
  State<RailNav> createState() => _RailNavState();
}

class _RailNavState extends State<RailNav> {
  int _odabraniIndeks = 0;

  void _odaberi(int indeks) => setState(() => _odabraniIndeks = indeks);

  @override
  Widget build(BuildContext context) {
    final sadrzaj = Center(
      child: Text(
        railOdredista[_odabraniIndeks].naziv,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        final siroki = constraints.maxWidth >= 600;

        if (siroki) {
          return Scaffold(
            appBar: AppBar(title: const Text('Navigation rail')),
            body: Row(
              children: [
                NavigationRail(
                  selectedIndex: _odabraniIndeks,
                  onDestinationSelected: _odaberi,
                  labelType: NavigationRailLabelType.all,
                  destinations: [
                    for (final o in railOdredista)
                      NavigationRailDestination(
                        icon: Icon(o.ikona),
                        selectedIcon: Icon(o.odabranaIkona),
                        label: Text(o.naziv),
                      ),
                  ],
                ),
                Expanded(child: sadrzaj),
              ],
            ),
          );
        }

        return Scaffold(
          appBar: AppBar(title: const Text('Navigation rail')),
          body: sadrzaj,
          bottomNavigationBar: NavigationBar(
            selectedIndex: _odabraniIndeks,
            onDestinationSelected: _odaberi,
            destinations: [
              for (final o in railOdredista)
                NavigationDestination(
                  icon: Icon(o.ikona),
                  selectedIcon: Icon(o.odabranaIkona),
                  label: o.naziv,
                ),
            ],
          ),
        );
      },
    );
  }
}