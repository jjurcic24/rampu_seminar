import 'package:flutter/material.dart';
import 'primjeri/popis.dart';

class Pocetni extends StatelessWidget {
  const Pocetni({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigacija u Flutteru'),
      ),
      body: primjeri.isEmpty
          ? const Center(
              child: Text('Primjeri!'),
            )
          : ListView.separated(
              itemCount: primjeri.length,
              separatorBuilder: (context, index) =>
                  const Divider(height: 1),
              itemBuilder: (context, index) {
                final primjer = primjeri[index];
                return ListTile( 
                  leading: Icon(primjer.ikona),
                  title: Text('${index + 1}. ${primjer.naslov}'),
                  subtitle: Text(primjer.opis),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: primjer.graditelj),
                  ),
                );
              },
            ),
    );
  }
}