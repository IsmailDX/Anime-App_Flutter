import 'package:anime_app/models/character.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';

class CharacterImagesScreen extends StatelessWidget {
  const CharacterImagesScreen({required this.character, Key? key})
      : super(key: key);

  final Character character;

  Future<void> _saveImageToGallery(
      BuildContext context, String imagePath) async {
    if (!(await Permission.storage.isGranted)) {
      var status = await Permission.storage.request();
      if (!status.isGranted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Permission denied to access storage')),
        );
        return;
      }
    }

    try {
      ByteData data = await rootBundle.load(imagePath);
      await ImageGallerySaver.saveImage(data.buffer.asUint8List());
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Image saved to gallery')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to save image')),
      );
    }
  }

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
                String imagePath =
                    'assets/images/list_images/${character.name}/${character.list![index]}';

                return GestureDetector(
                  onLongPress: () {
                    showDialog(
                      context: context,
                      builder: (ctx) {
                        return AlertDialog(
                          title: const Text('Download Image'),
                          content:
                              const Text('Do you want to download this image?'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                _saveImageToGallery(context, imagePath);
                                Navigator.of(context).pop();
                              },
                              child: const Text('Download'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    height: double.infinity,
                    width: 200,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(imagePath),
                      ),
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
