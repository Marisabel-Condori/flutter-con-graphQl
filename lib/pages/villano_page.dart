import 'package:app_graphql/provider/villano_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VillanoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final villanoProvider = Provider.of<VillanoProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('id: ${villanoProvider.id}'),
            Text('nombre: ${villanoProvider.nombre}'),
            Text('alias: ${villanoProvider.alias}'),
            Text('poderes: ${villanoProvider.poderes}'),
            Text('imagen Url: ${villanoProvider.imagenUrl}')
          ],
        )
      ),
    );
  }
}