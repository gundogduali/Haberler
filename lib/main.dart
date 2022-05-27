import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_localizations.dart';
import 'di/get_it.dart' as getIt;
import 'presentation/news_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  unawaited(
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]));
  unawaited(getIt.init());

  runApp(
    EasyLocalization(
      supportedLocales: AppLocalizations.supportedLocales,
      startLocale: AppLocalizations.trLocale,
      path: AppLocalizations.path,
      child: NewsApp(),
    ),
  );
}
