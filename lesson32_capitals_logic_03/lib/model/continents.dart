import 'package:flutter/material.dart';
import 'package:lesson32_capitals_logic_03/constants/app_colors.dart';

class Continents {
  const Continents({required this.name, required this.image,required this.colors,});
  final String name;
  final String image;
  final Color colors;

  }

  const Continents asia = Continents(name: 'Asia', image: 'asia', colors: AppColors.asiaColor,);
  const Continents africa = Continents(name: 'Africa', image: 'africa', colors: AppColors.africaColor);
  const Continents northAmerica = Continents(name: 'North America', image: 'north_america', colors: AppColors.nortAmericaColor);
  const Continents sourthAmerica = Continents(name: 'Sourth America', image: 'sourth_america', colors: AppColors.sourthAmericaColor);
  const Continents australia = Continents(name: 'Australia', image: 'australia', colors: AppColors.australiaColor);
  const Continents europe = Continents(name: 'Europe', image: 'europe', colors: AppColors.europeColor);

  List<Continents> continentsList = [
    asia, africa, northAmerica, sourthAmerica, australia, europe,
  ];