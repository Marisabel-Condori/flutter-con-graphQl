import 'package:flutter/material.dart';

class HeroeProvider with ChangeNotifier{
  List<Heroe> _listaHeroe;

  List get listaHeroe => this._listaHeroe;

  llenarListaHeroes(List miLista){
    // print('*********************** lista enviada');
    // print(miLista);
    _listaHeroe = miLista.map((e) {
      // print('****************valor de e - heroe provider');
      // print(e);
      Heroe itemHeroe = new Heroe(e['id'], e['nombre'], e['alias'], e['poderes'], e['imagenUrl']);
      return itemHeroe;
    }).toList();
    return _listaHeroe;
  }

}

class Heroe{
  String _id;
  String _nombre;
  String _alias;
  String _poderes;
  String _imagenUrl;

  Heroe(String id, String nombre, String alias, String poderes, String imagenUrl){
    this._id = id; this._nombre = nombre; this._alias = alias;
    this._poderes = poderes; this._imagenUrl = imagenUrl;
  }

  String get id         => this._id;
  String get nombre     => this._nombre;
  String get alias      => this._alias;
  String get poderes    => this._poderes;
  String get imagenUrl  => this._imagenUrl;

  set id(valor){        this._id        = valor; }
  set nombre(valor){    this._nombre    = valor; }
  set alias(valor){     this._alias     = valor; }
  set poderes(valor){   this._poderes   = valor; }
  set imagenUrl(valor){ this._imagenUrl = valor; }
}