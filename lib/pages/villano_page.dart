import 'package:app_graphql/provider/villano_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VillanoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
 //   print('********************************************************villano page');
    List<Villano> villanoProvider = Provider.of<VillanoProvider>(context).listavillano;
  //  print('villano provider.listavillano: $villanoProvider');
    List<Widget> widgetListVillano = villanoProvider.map(( widgetVill) {
  //    print('*******************************************antes de entrar a la tarjeta');
      return 
      _Tarjeta(villano:  widgetVill);
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
  final Villano villano;

  _Tarjeta({ this.villano});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, 'villanoPantalla', arguments: villano);
      },
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                child: Image(
                  image: NetworkImage(this.villano.imagenUrl),
                  fit: BoxFit.cover,
                ),
                width: double.infinity,
                height: 210.0,
                color: Colors.black54,
              ),
              Container(
               alignment: Alignment.center,
               child: Text(this.villano.nombre, style: TextStyle(fontSize: 30.0, color: Colors.white70)),
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

