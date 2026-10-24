# Implementacija navigabilnosti unutar aplikacije (Flutter)

Seminarski rad iz kolegija Razvoj aplikacija za mobilne i pametne uređaje.

Autor: Jakov Jurčić

Aplikacija sadrži 7 zasebnih primjera navigacije u Flutteru. Svaki primjer prikazuje
jednu vrstu navigacije, a svi se otvaraju s početnog ekrana.

## Pokretanje

Instaliran Flutter SDK te pokrenut emulator ili spojen uređaj.

- flutter pub get
- flutter run

## Primjeri

| # | Primjer | Što prikazuje | Datoteke |
|---|---------|---------------|----------|
| 1 | Imperativna navigacija | Navigator.push / pop, slanje podatka kroz konstruktor i vraćanje rezultata | imperativna_navigacija/unos.dart, prikaz.dart |
| 2 | Deklarativna navigacija | go_router, rute na jednom mjestu, podatak kroz putanju (/proizvodi/:id) | rute.dart, deklarativna_navigacija/proizvodi.dart, detalji.dart |
| 3 | Bottom navigation | NavigationBar s 3 odredišta, mijenja se samo sadržaj ekrana | bottom_navigacija/ |
| 4 | Top navigation | TabBar i TabBarView s DefaultTabController | top_navigacija/ |
| 5 | Navigation drawer | NavigationDrawer koji se otvara iz AppBara | drawer_navigacija/drawer_nav.dart |
| 6 | Izbornici | MenuAnchor s MenuItemButton stavkama u AppBaru | izbornici/izbornici.dart |
| 7 | Navigation rail | NavigationRail na širokom ekranu, NavigationBar na uskom (LayoutBuilder, 600 dp) | rail_nav/rail_nav.dart |

Sve datoteke primjera nalaze se u mapi lib/primjeri/.

## Kako ekrani primaju podatke

- Konstruktor: OcjenaNavigacija(ime: ...), Profil(ime: 'Jakov')
- Putanja: context.push('/proizvodi/3') i state.pathParameters['id']
- Vraćanje rezultata: Navigator.pop(context, 'Odlično') i await Navigator.push(...)

## Korišteni paketi

- [go_router](https://pub.dev/packages/go_router)
