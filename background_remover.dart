
import 'package:image/image.dart' as img;

img.Image removeWhite(img.Image src) {

  for (int y = 0; y < src.height; y++) {
    for (int x = 0; x < src.width; x++) {

      var pixel = src.getPixel(x, y);

      int r = img.getRed(pixel);
      int g = img.getGreen(pixel);
      int b = img.getBlue(pixel);

      if (r > 240 && g > 240 && b > 240) {
        src.setPixelRgba(x, y, 0, 0, 0, 0);
      }

    }
  }

  return src;
}
