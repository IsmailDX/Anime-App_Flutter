import 'package:flutter/material.dart';

enum Categories { onePiece, naruto, bleach, demonSlayer, dragonBall }

class Category {
  const Category(this.title, this.gradient);

  final String title;
  final Gradient gradient;
}
