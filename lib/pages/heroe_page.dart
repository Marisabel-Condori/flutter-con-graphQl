import 'package:app_graphql/provider/heroe_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeroePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Heroe> heroeProvider = Provider.of<HeroeProvider>(context).listaHeroe;
    List<Widget> listaHeroes = heroeProvider.map((e) {
      return _Tarjeta(heroe: e);
    }).toList();
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: listaHeroes,
        ),
      ),
    );
  }
}

class _Tarjeta extends StatelessWidget {
  final Heroe heroe;

  _Tarjeta({ this.heroe});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'heroePantalla', arguments: this.heroe),
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                child: Image(
                  image: NetworkImage(this.heroe.imagenUrl),
                  fit: BoxFit.cover,
                ),
                width: double.infinity,
                height: 210.0,
                color: Colors.black54,
              ),
              Container(
               alignment: Alignment.center,
               child: Text(this.heroe.nombre, style: TextStyle(fontSize: 30.0, color: Colors.white70)),
               width: double.infinity,
               height: 50.0,
               color: Colors.white24,
              )
            ],
          ),
        ),
      ),
    );
  }
}