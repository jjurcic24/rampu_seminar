import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'primjeri/popis.dart';

class Pocetni extends StatelessWidget {
  const Pocetni({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigacija u Flutteru')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: primjeri.length,
        itemBuilder: (context, index) {
          final primjer = primjeri[index];
          return Card(
            child: ListTile(
              title: Text(primjer.naslov),
              onTap: () => context.push(primjer.putanja),
            ),
          );
        },
      ),
    );
  }
}
