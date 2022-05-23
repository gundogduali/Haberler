import 'package:flutter/cupertino.dart';

import '../themes/app_color.dart';

class CustomPlaceHolder extends Placeholder {
  const CustomPlaceHolder({
    Key? key,
    required double fallbackHeight,
    required double fallbackWidth,
  }) : super(
            key: key,
            fallbackHeight: fallbackHeight,
            fallbackWidth: fallbackWidth,
            color: AppColor.purpleHeart);
}
