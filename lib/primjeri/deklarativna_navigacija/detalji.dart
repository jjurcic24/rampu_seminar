import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'proizvodi.dart';

class DetaljiEkran extends StatelessWidget {
  final int id;

  const DetaljiEkran({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final proizvod = proizvodi.where((p) => p.id == id).firstOrNull;

    return Scaffold(
      appBar: AppBar(title: const Text('Detalji')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(proizvod == null
                ? 'Proizvod nije pronađen'
                : '${proizvod.naziv} – ${proizvod.cijena} €'),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () => context.go('/'),
              child: const Text('Natrag na početnu'),
            ),
          ],
        ),
      ),
    );
  }
}