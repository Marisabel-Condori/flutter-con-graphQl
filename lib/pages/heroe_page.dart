import 'package:app_graphql/provider/heroe_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeroePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _Tarjeta()
          ],
        )
      ),
    );
  }
}

class _Tarjeta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heroeProvider = Provider.of<HeroeProvider>(context);
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              child: Image(
                image: NetworkImage(heroeProvider.imagenUrl),
                fit: BoxFit.cover,
              ),
              width: double.infinity,
              height: 210.0,
              color: Colors.black54,
            ),
            Container(
             alignment: Alignment.center,
             child: Text(heroeProvider.nombre, style: TextStyle(fontSize: 30.0, color: Colors.white70)),
             width: double.infinity,
             height: 50.0,
             color: Colors.white24,
            )
          ],
        ),
      ),
    );
  }
}