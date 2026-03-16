
import 'package:image/image.dart' as img;

class DTFOptimizer {

  static img.Image optimize(img.Image src) {

    src = img.contrast(src, 1.4);
    src = img.adjustColor(src, saturation: 1.1);
    src = img.gaussianBlur(src, 1);

    return src;
  }
}
