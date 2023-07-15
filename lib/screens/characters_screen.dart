import 'package:anime_app/models/character.dart';
import 'package:anime_app/widgets/videoplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CharacterScreen extends StatelessWidget {
  const CharacterScreen({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              character.name,
              style: GoogleFonts.roboto(fontSize: 30),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              character.description,
              style: GoogleFonts.roboto(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            //to play video from assets
            Center(
              child: VideoPlayerWidget(
                videoUrl: character.video!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
