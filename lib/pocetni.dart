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
          body : ListView.separated(
              itemCount: primjeri.length,
              separatorBuilder: (context, index) =>
                  const Divider(height: 1),
              itemBuilder: (context, index) {
                final primjer = primjeri[index];
                return ListTile( 
                  title: Text('${index + 1}. ${primjer.naslov}'),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: primjer.navigator),
                  ),
                );
              },
            ),
    );
  }
}