import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'di/get_it.dart' as getIt;
import 'presentation/news_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  unawaited(
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]));
  unawaited(getIt.init());

  runApp(const NewsApp());
}
