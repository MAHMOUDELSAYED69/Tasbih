import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasbih/router/app_router.dart';
import 'package:tasbih/utils/constants/routes.dart';
import 'package:tasbih/utils/themes/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            builder: (context, widget) {
              final mediaQueryData = MediaQuery.of(context);
              final scaledMediaQueryData = mediaQueryData.copyWith(
                textScaler: TextScaler.noScaling,
              );
              return MediaQuery(
                data: scaledMediaQueryData,
                child: widget!,
              );
            },
            title: 'Tasbih',
            debugShowCheckedModeBanner: false,
            initialRoute: RouteManager.initialRoute,
            onGenerateRoute: AppRouter.onGenerateRoute,
            theme: AppTheme.darkTheme,
          );
        });
  }
}
