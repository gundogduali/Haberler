import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../common/generated/locale_keys.g.dart';
import '../../domain/entities/app_error.dart';
import 'app_button.dart';

class AppErrorWidget extends StatelessWidget {
  final AppErrorType errorType;
  final VoidCallback onPressed;

  const AppErrorWidget({
    Key? key,
    required this.errorType,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          errorType == AppErrorType.api
              ? LocaleKeys.somethingWentWrong.tr()
              : LocaleKeys.checkNetwork.tr(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline6,
        ),
        AppButton(text: LocaleKeys.retry.tr(), onPressed: onPressed)
      ],
    );
  }
}
