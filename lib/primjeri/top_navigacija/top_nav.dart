import 'package:flutter/material.dart';
import 'sadrzaj.dart';

class TopNav extends StatelessWidget {
  const TopNav({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Top navigation'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.menu_book), text: 'Knjige'),
              Tab(icon: Icon(Icons.category), text: 'Albumi'),
              Tab(icon: Icon(Icons.edit), text: 'Pisci'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Sadrzaj(
              ikona: Icons.menu_book,
              stavke: ['Knjiga 1', 'Knjiga 2', 'Knjiga 3'],
            ),
            Sadrzaj(
              ikona: Icons.category,
              stavke: ['Album 1', 'Album 2'],
            ),
            Sadrzaj(
              ikona: Icons.edit,
              stavke: ['Pisac 1', 'Pisac 2', 'Pisac 3', 'Pisac 4'],
            ),
          ],
        ),
      ),
    );
  }
}