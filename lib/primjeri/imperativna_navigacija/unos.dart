import 'package:flutter/material.dart';

import 'prikaz.dart';

class ImperativnaNavigacija extends StatefulWidget {
  const ImperativnaNavigacija({super.key});

  @override
  State<ImperativnaNavigacija> createState() => _ImperativnaNavigacijaState();
}

class _ImperativnaNavigacijaState extends State<ImperativnaNavigacija> {
  final _imeController = TextEditingController();
  String _rezultat = 'Nema odabira';
  Future<void> _otvoriOcjenaNavigacija() async {
    final rezultat = await Navigator.push<String>(
      context,
      MaterialPageRoute(
        builder: (context) => OcjenaNavigacija(ime: _imeController.text),
      ),
    );

    if (!mounted) return;

    setState(() => _rezultat = rezultat ?? 'Nema odabira');
  }

  @override
  void dispose() {
    _imeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Imperativna navigacija')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _imeController,
              decoration: const InputDecoration(labelText: 'Tvoje ime'),
            ),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: _otvoriOcjenaNavigacija,
              child: const Text('Otvori drugi ekran!'),
            ),
            const SizedBox(height: 16),
            Text('Rezultat: $_rezultat'),
          ],
        ),
      ),
    );
  }
}