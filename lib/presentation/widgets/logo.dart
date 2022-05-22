import 'package:flutter/material.dart';

import '../../common/constants/icon_paths.dart';
import '../../common/extensions/size_extensions.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key, required this.height})
      : assert(height > 0, 'height must be > 0'),
        super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      IconPaths.icLogo.str(),
      height: height.h,
    );
  }
}
