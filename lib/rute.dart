import 'package:go_router/go_router.dart';

import 'pocetni.dart';
import 'primjeri/imperativna_navigacija/unos.dart';
import 'primjeri/deklarativna_navigacija/proizvodi.dart';
import 'primjeri/deklarativna_navigacija/detalji.dart';

final GoRouter ruter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Pocetni(),
      routes: [
        GoRoute(
          path: 'imperativna',
          builder: (context, state) => const ImperativnaNavigacija(),
        ),
        GoRoute(
          path: 'proizvodi',
          builder: (context, state) => const Proizvodi(),
          routes: [
            GoRoute(
              path: ':id',
              builder: (context, state) {
                final id = int.tryParse(state.pathParameters['id'] ?? '') ?? 0;
                return DetaljiEkran(id: id);
              },
            ),
          ],
        ),
      ],
    ),
  ],
);