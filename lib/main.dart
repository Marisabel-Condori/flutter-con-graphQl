import 'package:app_graphql/pages/heroe_page.dart';
import 'package:app_graphql/pages/home_page.dart';
import 'package:app_graphql/pages/pantalla_heroe_page.dart';
import 'package:app_graphql/pages/pantalla_villano_page.dart';
import 'package:app_graphql/pages/villano_page.dart';
import 'package:app_graphql/provider/heroe_provider.dart';
import 'package:app_graphql/provider/villano_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HeroeProvider()),
        ChangeNotifierProvider(create: (_) => VillanoProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) => HomePage(),
          'heroe': (BuildContext context) => HeroePage(),
          'villano': (BuildContext context) => VillanoPage(),
          'heroePantalla': (BuildContext context) => PantallaHeroePage(),
          'villanoPantalla': (BuildContext context) => PantallaVillanoPage(),
        },
      ),
    );
  }
}