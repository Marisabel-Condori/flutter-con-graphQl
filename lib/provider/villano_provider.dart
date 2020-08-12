import 'package:flutter/material.dart';

class VillanoProvider with ChangeNotifier{
  List<Villano> _listaVillano = new List();
  
  List get listavillano => this._listaVillano;

  llenarListaVillano(List lista){
    print('*******************llena lista villano');
    print(_listaVillano);
    this._listaVillano = lista.map((villano) {
      Villano itemVillano = new Villano();
      itemVillano.llenarDatos(villano);
      return itemVillano;
    }).toList();
  }
}

class Villano{

  llenarDatos(Map mapaVillano){
    print('*******************llena datos');
    id        = mapaVillano['id'];
    nombre    = mapaVillano['nombre'];
    alias     = mapaVillano['alias'];
    poderes   = mapaVillano['poder'];
    imagenUrl = mapaVillano['imagenUrl'];
  }
  String _id;
  String _nombre;
  String _alias;
  String _poderes;
  String _imagenUrl;

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