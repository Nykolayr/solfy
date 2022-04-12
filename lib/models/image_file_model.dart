import 'package:image_picker/image_picker.dart';

class ImageFileModel {
  ImageFileModel({
    required this.name,
    required this.image,
    required this.length,
  });

  String name;

  XFile image;

  double length;
}
