import 'package:flutter/material.dart';

class Izbornici extends StatelessWidget {
  const Izbornici({super.key});

  void _otvori(BuildContext context, String naslov) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Info(naslov: naslov)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Izbornici'),
        actions: [
          MenuAnchor(
            builder: (context, controller, child) => IconButton(
              icon: const Icon(Icons.more_vert),
              tooltip: 'Više opcija',
              onPressed: () => controller.isOpen
                  ? controller.close()
                  : controller.open(),
            ),
            menuChildren: [
              MenuItemButton(
                leadingIcon: const Icon(Icons.settings),
                onPressed: () => _otvori(context, 'Postavke'),
                child: const Text('Postavke'),
              ),
              MenuItemButton(
                leadingIcon: const Icon(Icons.help_outline),
                onPressed: () => _otvori(context, 'Pomoć'),
                child: const Text('Pomoć'),
              ),
              MenuItemButton(
                leadingIcon: const Icon(Icons.info_outline),
                onPressed: () => _otvori(context, 'O aplikaciji'),
                child: const Text('O aplikaciji'),
              ),
            ],
          ),
        ],
      ),
      body: const Center(
        child: Text('Otvori izbornik!'),
      ),
    );
  }
}

class Info extends StatelessWidget {
  final String naslov;

  const Info({super.key, required this.naslov});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(naslov)),
      body: Center(child: Text('Ovo je ekran: $naslov')),
    );
  }
}