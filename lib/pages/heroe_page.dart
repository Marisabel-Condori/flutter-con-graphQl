import 'package:app_graphql/provider/heroe_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeroePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final heroeProvider = Provider.of<HeroeProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('id: ${heroeProvider.id}'),
            Text('nombre: ${heroeProvider.nombre}'),
            Text('alias: ${heroeProvider.alias}'),
            Text('poderes: ${heroeProvider.poderes}'),
            Text('imagen Url: ${heroeProvider.imagenUrl}')
          ],
        )
      ),
    );
  }
}