import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Proizvod {
  final int id;
  final String naziv;
  final double cijena;

  const Proizvod(this.id, this.naziv, this.cijena);
}

const List<Proizvod> proizvodi = [
  Proizvod(1, 'Monitor', 499.99),
  Proizvod(2, 'Slušalice', 79.90),
  Proizvod(3, 'Miš', 19.50),
];

class Proizvodi extends StatelessWidget {
  const Proizvodi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Proizvodi')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          for (final proizvod in proizvodi)
            Card(
              child: ListTile(
                title: Text(proizvod.naziv),
                onTap: () => context.push('/proizvodi/${proizvod.id}'),
              ),
            ),
        ],
      ),
    );
  }
}