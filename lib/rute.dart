import 'package:go_router/go_router.dart';

import 'pocetni.dart';
import 'primjeri/imperativna_navigacija/unos.dart';
import 'primjeri/deklarativna_navigacija/proizvodi.dart';
import 'primjeri/deklarativna_navigacija/detalji.dart';
import 'primjeri/bottom_navigacija/bottom_navigacija.dart';
import 'primjeri/top_navigacija/top_nav.dart';
import 'primjeri/drawer_navigacija/drawer_nav.dart';
import 'primjeri/izbornici/izbornici.dart';
import 'primjeri/rail_nav/rail_nav.dart';

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
        GoRoute(
          path: 'bottom',
          builder: (context, state) => const BottomNavigacija(),
        ),
        GoRoute(path: 'tabovi', builder: (context, state) => const TopNav()),
        GoRoute(
          path: 'drawer',
          builder: (context, state) => const DrawerNavigacija(),
        ),
        GoRoute(
          path: 'izbornici',
          builder: (context, state) => const Izbornici(),
        ),
        GoRoute(
          path: 'rail',
          builder: (context, state) => const RailNav(),
        ),
      ],
    ),
  ],
);
