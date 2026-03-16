
import 'package:image/image.dart' as img;

class Vectorizer {

  static img.Image prepare(img.Image src) {

    src = img.grayscale(src);
    src = img.contrast(src, 1.5);
    src = img.threshold(src, threshold: 140);

    return src;
  }
}
