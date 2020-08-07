import 'package:app_graphql/provider/villano_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VillanoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print('********************************************************villano page');
    List<Villano> villanoProvider = Provider.of<VillanoProvider>(context).listavillano;
    print('villano provider.listavillano: $villanoProvider');
    List<Widget> widgetListVillano = villanoProvider.map(( widgetVill) {
      print('*******************************************antes de entrar a la tarjeta');
      return 
      _Tarjeta(
        nombreT: widgetVill.nombre,
        imagenUrlT: widgetVill.imagenUrl,
      );
    }).toList();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:widgetListVillano,
        ),
      ),
    );
  }
}

class _Tarjeta extends StatelessWidget {
  final nombreT;  final imagenUrlT;

  _Tarjeta({ this.nombreT, this.imagenUrlT});

  @override
  Widget build(BuildContext context) {
    final villanoProvider = Provider.of<VillanoProvider>(context);
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              child: Image(
                image: NetworkImage(this.imagenUrlT),
                fit: BoxFit.cover,
              ),
              width: double.infinity,
              height: 210.0,
              color: Colors.black54,
            ),
            Container(
             alignment: Alignment.center,
             child: Text(this.nombreT, style: TextStyle(fontSize: 30.0, color: Colors.white70)),
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


      //Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text('id: ${villanoProvider.id}'),
        //     Text('nombre: ${villanoProvider.nombre}'),
        //     Text('alias: ${villanoProvider.alias}'),
        //     Text('poderes: ${villanoProvider.poderes}'),
        //     Text('imagen Url: ${villanoProvider.imagenUrl}')
        //   ],
        // )