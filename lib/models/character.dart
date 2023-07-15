import 'package:anime_app/models/category.dart';
import 'package:flutter/material.dart';

class Character {
  const Character({
    required this.id,
    required this.category,
    required this.name,
    this.image,
    this.background,
    required this.description,
    this.list,
    this.quote,
    this.video,
  });

  final String id;
  final String name;
  final Category category;
  final Image? image;
  final String? background;
  final String description;
  final List? list;
  final String? quote;
  final String? video;
}
