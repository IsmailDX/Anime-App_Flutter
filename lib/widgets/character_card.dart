import 'package:anime_app/models/character.dart';
import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          gradient: character.category.gradient,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 37,
            vertical: 36,
          ),
          child: Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 70,
                  height: 70,
                  child: Transform.scale(
                      scale: 2, // Increase the scale factor as needed
                      child: character.image),
                ),
              ),
              const SizedBox(
                width: 43,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    character.name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(character.category.title),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
