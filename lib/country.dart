// ignore: unused_import
import 'package:flutter/material.dart';

class Country {
  final String name;
  final String capital;
  final String region;
  final int population;

  const Country({
    this.name = '',
    this.capital = '',
    this.region = '',
    this.population = 0,
  });
}

final countries = [
  const Country(name:'Belarus',capital:'Minsk',region:'Europe',population: 9498700),
  const Country(name:'Bulgaria',capital:'Sofia',region:'Europe',population: 7153784),
  const Country(name:'Czech Republic',capital:'Prague',region:'Europe',population: 10558524),
  const Country(name:'Denmark',capital:'Copenhagen',region:'Europe',population: 5717014),
  const Country(name:'Italy',capital:'Rome',region:'Europe',population: 60665551),
  const Country(name:'Liechtenstein',capital:'Vaduz',region:'Europe',population: 37623),
  const Country(name:'Norway',capital:'Oslo',region:'Europe',population: 5223256),
  const Country(name:'Spain',capital:'Madrid',region:'Europe',population: 46438422),
  const Country(name:'Sweden',capital:'Stockholm',region:'Europe',population: 9894888),
  const Country(name:'Ukraine',capital:'Kiev',region:'Europe',population: 42692393),
];