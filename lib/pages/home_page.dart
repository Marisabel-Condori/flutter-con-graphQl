
import 'package:app_graphql/bd/graphQl_BD.dart';
import 'package:app_graphql/provider/heroe_provider.dart';
import 'package:app_graphql/provider/villano_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  final graphHeroeVillano = new GraphQlBD();

  @override
  Widget build(BuildContext context) {
    final heroeProvider = Provider.of<HeroeProvider>(context);
  //  final villanoProvider = Provider.of<VillanoProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ItemBoton(text: 'Heroe' ,graphHeroeVillano: graphHeroeVillano),
            ItemBoton(text: 'Villanos', graphHeroeVillano: graphHeroeVillano),
            // RaisedButton(
            //   child: Text('Villano'),
            //   onPressed: () async{ 
            //     Map villanoMap = await graphHeroeVillano.bdConsultasVillano();
            //     villanoProvider.id = villanoMap['id'];
            //     villanoProvider.nombre = villanoMap['nombre'];
            //     villanoProvider.alias = villanoMap['alias'];
            //     villanoProvider.poderes = villanoMap['poder'];
            //     villanoProvider.imagenUrl = villanoMap['imagenUrl'];
            //     Navigator.pushNamed(context, 'villano');
            //   }
            // ),
          ],
        ),
      ),
    );
  }
}

class ItemBoton extends StatelessWidget {
  final String text;  final GraphQlBD graphHeroeVillano;

  ItemBoton({
    this.text,  @required this.graphHeroeVillano,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      onPressed: () async{ 
        if (this.text == 'Heroe') {
          // Map heroeMap = await graphHeroeVillano.bdConsultasHeroe();
          //     opProvider.id = heroeMap['id'];
          //     opProvider.nombre = heroeMap['nombre'];
          //     opProvider.alias = heroeMap['alias'];
          //     opProvider.poderes = heroeMap['poderes'];
          //     opProvider.imagenUrl = heroeMap['imagenUrl'];
              Navigator.pushNamed(context, 'heroe');
        } else {
          final villanoProvider = Provider.of<VillanoProvider>(context, listen: false);
          //       villanoProvider.id = villanoMap['id'];
          //       villanoProvider.nombre = villanoMap['nombre'];
          //       villanoProvider.alias = villanoMap['alias'];
          //       villanoProvider.poderes = villanoMap['poder'];
          //       villanoProvider.imagenUrl = villanoMap['imagenUrl'];
          
          List villanoList = await graphHeroeVillano.bdConsultasVillano();
          villanoProvider.llenarListaVillano(villanoList);
          print(villanoList);
          Navigator.pushNamed(context, 'villano');
        }   
      }
    );
  }
}