import 'dart:convert';
import 'dart:typed_data';

import 'package:transparent_image/transparent_image.dart';

class ImageCoder {
  ImageCoder._();

  static String encode(Uint8List data) {
    try {
      return base64Encode(data);
    } catch (e) {
      return base64Encode(kTransparentImage);
    }
  }

  static Uint8List decode(String data) {
    try {
      return base64Decode(data);
    } catch (e) {
      return kTransparentImage;
    }
  }
}
