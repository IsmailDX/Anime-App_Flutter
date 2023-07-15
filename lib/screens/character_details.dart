import 'dart:ui';

import 'package:anime_app/models/character.dart';
import 'package:flutter/material.dart';
import 'package:anime_app/widgets/tab_bar.dart';

class CharacterDetailScreen extends StatelessWidget {
  const CharacterDetailScreen({Key? key, required this.character})
      : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
      ),
      body: Stack(
        children: [
          Image.asset(
            '${character.background}',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
              child: Container(
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ),
          Positioned.fill(
            child: TabBarWidget(
              character: character,
            ),
          ),
        ],
      ),
    );
  }
}
