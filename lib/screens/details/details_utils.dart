import 'package:flutter/material.dart';
import 'package:formation_flutter/screens/details/tabs/details_info.dart';

class DetailsScreenUtils {
  const DetailsScreenUtils._();

  static double scrollProgress(BuildContext context) {
    final ScrollController controller = PrimaryScrollController.of(context);
    return !controller.hasClients
        ? 0
        : (controller.position.pixels / ProductInfo.kImageHeight).clamp(0, 1);
  }
}
