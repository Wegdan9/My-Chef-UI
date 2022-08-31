import 'package:flutter/material.dart';

class Recipe{
  final int? id;
  final int? chefs;
  final int? recipes;
  final String? title;
  final String? description;
  final String? imageSrc;
  final Color? color;

  Recipe({this.id, this.chefs, this.recipes, this.title, this.description, this.imageSrc, this.color});
}