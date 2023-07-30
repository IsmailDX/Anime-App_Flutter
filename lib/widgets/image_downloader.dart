import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';

class ImageDownloader {
  static Future<bool> _requestStoragePermission() async {
    var status = await Permission.storage.request();
    return status.isGranted;
  }

  static Future<void> saveImageToGallery(
      BuildContext context, String imagePath) async {
    if (!(await Permission.storage.isGranted)) {
      bool granted = await _requestStoragePermission();
      if (!granted) {
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
}
