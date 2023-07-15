import 'package:anime_app/models/category.dart';
import 'package:flutter/material.dart';

const categories = {
  Categories.onePiece: Category(
    'One Piece',
    LinearGradient(
      colors: [
        Color.fromARGB(76, 0, 174, 255),
        Color.fromARGB(255, 0, 174, 255)
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Categories.naruto: Category(
    'Naruto Shippuden',
    LinearGradient(
      colors: [
        Color.fromARGB(76, 176, 106, 0),
        Color.fromARGB(255, 176, 106, 0)
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Categories.bleach: Category(
    'Bleach',
    LinearGradient(
      colors: [
        Color.fromARGB(76, 83, 45, 255),
        Color.fromARGB(255, 83, 45, 255)
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Categories.demonSlayer: Category(
    'Demon Slayer',
    LinearGradient(
      colors: [Color.fromARGB(76, 176, 0, 0), Color.fromARGB(255, 176, 0, 0)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Categories.dragonBall: Category(
    'Dragon Ball Z',
    LinearGradient(
      colors: [Color.fromARGB(76, 22, 110, 0), Color.fromARGB(255, 22, 110, 0)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
};
