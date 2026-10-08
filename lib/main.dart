import 'package:evently_app/core/config/app_config.dart';
import 'package:evently_app/core/routing/app_routes.dart';
import 'package:evently_app/features/on_boarding/on_boarding_screen.dart';
import 'package:evently_app/features/setup/setup_screen.dart';
import 'package:evently_app/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) {
        ThemeProvider();
      },
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppConfig.lightAppColors,
      darkTheme: AppConfig.darkAppColors,
      themeMode: AppConfig.themeMode,
      initialRoute: AppRoutes.setup,
      routes: {
        AppRoutes.setup: (context) => SetupScreen(),
        AppRoutes.onBoarding: (context) => OnBoardingScreen(),
      },
    );
  }
}
