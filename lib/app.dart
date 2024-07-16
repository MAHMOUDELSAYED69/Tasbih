import 'package:flutter/material.dart';
import 'package:tasbih/router/app_router.dart';
import 'package:tasbih/utils/constants/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Tasbih',
      debugShowCheckedModeBanner: false,
      initialRoute: RouteManager.initialRoute,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
