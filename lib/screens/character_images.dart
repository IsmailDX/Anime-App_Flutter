import 'package:anime_app/models/character.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CharacterImagesScreen extends StatelessWidget {
  const CharacterImagesScreen({required this.character, super.key});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 400, //height of the image
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 20, top: 20),
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return Container(
                  height: double.infinity,
                  width: 200,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/images/list_images/${character.name}/${character.list![index]}'),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            '${character.quote}',
            style: GoogleFonts.getFont(
              'Fasthand',
              textStyle: const TextStyle(fontSize: 25),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
