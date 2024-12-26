import 'package:codepur_8h/Models/catalog.dart';
import 'package:flutter/material.dart';

class CarModel{

  CatalogModel _catalog;

  final List<int> _itemids = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatlog){
    _catalog = newCatlog;
  }

}
