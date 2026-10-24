import 'package:flutter/material.dart';

class OcjenaNavigacija extends StatelessWidget {
  final String ime;

  const OcjenaNavigacija({super.key, required this.ime});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imperativna navigacija'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Pozdrav, $ime!',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            const Text('Kako ti se sviđa navigacija u Flutteru?'),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: () => Navigator.of(context).pop('Odlično'),
              child: const Text('Odlično'),
            ),
            const SizedBox(height: 8),
            FilledButton.tonal(
              onPressed: () => Navigator.of(context).pop('Dobro'),
              child: const Text('Dobro'),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () => Navigator.of(context).pop('Loše'),
              child: const Text('Loše'),
            ),
          ],
        ),
      ),
    );
  }
}