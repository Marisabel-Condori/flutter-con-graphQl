import 'package:app_graphql/provider/heroe_provider.dart';
import 'package:flutter/material.dart';

class PantallaHeroePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _TarjetaImegen(),
          _Descripcion()
        ],
      )
    );
  }
}

class _Descripcion extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Heroe heroeP = ModalRoute.of(context).settings.arguments;
    return Container(
      child: Column(
        children: [
          _ItemDescripcion(titulo: 'Alias',subtitulo: heroeP.alias),
          _ItemDescripcion(titulo: 'Poderes',subtitulo: heroeP.poderes)
        ],
      ),
    );
  }
}

class _ItemDescripcion extends StatelessWidget {
  final titulo,subtitulo;
  _ItemDescripcion({ this.subtitulo, this.titulo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(this.titulo, style: TextStyle(
            fontWeight: FontWeight.bold, 
            fontSize: 20.0,
            fontStyle: FontStyle.italic),
          ),
          Text(this.subtitulo)
        ],
      ),
    );
  }
}

class _TarjetaImegen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Heroe heroeP = ModalRoute.of(context).settings.arguments;
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          width: size.width,
          height: size.height*0.5,
          child: ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50.0)),
            child: Image(
              width: size.width,
              height: size.height*0.5,
              fit: BoxFit.cover,
              image: NetworkImage(heroeP.imagenUrl)
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20.0, bottom: 20.0),
          child: Text(heroeP.nombre, style: TextStyle(
            color: Colors.white, 
            fontStyle: FontStyle.italic, 
            fontSize: 40.0)),
        )
      ],
    );
  }
}