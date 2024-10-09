import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../Bindings/app_binding.dart';
import '../Routes/app_routes.dart';
import '../Theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: const Locale('ar'),
      supportedLocales: const [
        Locale('en', ''), // English
        Locale('ar', ''), // Arabic
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate, // Material widgets localization
        GlobalWidgetsLocalizations.delegate, // Widget localization
        GlobalCupertinoLocalizations
            .delegate, // Cupertino widgets localization (iOS)
        DefaultCupertinoLocalizations.delegate,
      ],
      title: 'Thiqah Service Provider',
      initialBinding: InitialBinding(),
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.loading,
      getPages: AppRoutes.routes,
    );
  }
}
