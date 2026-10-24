import 'package:flutter/material.dart';

import 'stranice.dart';

// Ekran s donjom navigacijom – Stateful jer pamti odabrano odredište
class BottomNavigacija extends StatefulWidget {
  const BottomNavigacija({super.key});

  @override
  State<BottomNavigacija> createState() => _BottomNavigacijaState();
}

class _BottomNavigacijaState extends State<BottomNavigacija> {
  int _odabraniIndeks = 0;

  @override
  Widget build(BuildContext context) {

    final stranice = [
      const Pocetna(),
      const Pretraga(),
      const Profil(ime: 'Jakov'),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Bottom navigation')),
      body: stranice[_odabraniIndeks],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _odabraniIndeks,
        onDestinationSelected: (indeks) {
          setState(() => _odabraniIndeks = indeks);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Početna',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Pretraga',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}