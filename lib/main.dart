import 'dart:async';

import 'package:flutter/material.dart';

import 'app.dart';
import 'utils/cache/cache.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheData.cacheDataInit();
  runApp(const MyApp());
}
