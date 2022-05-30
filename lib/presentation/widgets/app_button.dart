import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../common/constants/size_constants.dart';
import '../../common/extensions/size_extensions.dart';
import '../../common/screenutil/screenutil.dart';
import '../themes/app_color.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const AppButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil.screenWidth,
      decoration: BoxDecoration(
        color: AppColor.purpleHeart,
        borderRadius: BorderRadius.all(
          Radius.circular(Sizes.dimen_20.w),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: Sizes.dimen_16.w),
      margin: EdgeInsets.symmetric(
          vertical: Sizes.dimen_10.h, horizontal: Sizes.dimen_16.w),
      height: Sizes.dimen_16.h,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text.tr(),
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }
}
