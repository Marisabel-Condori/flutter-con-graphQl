import 'package:flutter/material.dart';

class HeroeProvider with ChangeNotifier{
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