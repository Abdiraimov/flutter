import 'dart:core';
import 'dart:ffi';
import 'package:flutter/material.dart';

class BozUiModel {
  BozUiModel({
  required this.name, 
  required this.color, 
  this.uuk,
  required this.kerege,
  required this.tunduk, 
  this.kyrgyz,}
  );


  final String name;
  final Color color;
  final Int? uuk;
  final String kerege;
  final String tunduk;
  final bool? kyrgyz;
  }

List <BozUiModel> listBozUi = [
  BozUiModel(
    name: 'bozUi', 
    color: Colors.white, 
    kerege: 'kerege', 
    tunduk: 'tunduk',
    kyrgyz: true)
];

  