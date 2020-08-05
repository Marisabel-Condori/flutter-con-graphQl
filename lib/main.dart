import 'package:app_graphql/pages/heroe_page.dart';
import 'package:app_graphql/pages/home_page.dart';
import 'package:app_graphql/pages/villano_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
        'heroe': (BuildContext context) => HeroePage(),
        'villano': (BuildContext context) => VillanoPage(),
      },
    );
  }
}