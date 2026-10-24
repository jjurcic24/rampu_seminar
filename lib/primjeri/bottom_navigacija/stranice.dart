import 'package:flutter/material.dart';

class Pocetna extends StatelessWidget {
  const Pocetna({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.home, size: 64),
          SizedBox(height: 16),
          Text('Početna stranica'),
        ],
      ),
    );
  }
}

class Pretraga extends StatelessWidget {
  const Pretraga({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.search, size: 64),
          SizedBox(height: 16),
          Text('Pretraga'),
        ],
      ),
    );
  }
}

class Profil extends StatelessWidget {
  final String ime;

  const Profil({super.key, required this.ime});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)),
          const SizedBox(height: 16),
          Text(ime, style: Theme.of(context).textTheme.headlineSmall),
        ], 
      ),
    );
  }
}