import 'package:evently_app/core/routing/app_routes.dart';
import 'package:evently_app/core/theme/app_theme.dart';
import 'package:evently_app/features/login_screen/login_screen.dart';
import 'package:evently_app/features/on_boarding/on_boarding_screen.dart';
import 'package:evently_app/features/setup/setup_screen.dart';
import 'package:evently_app/features/sign_up_screen/sign_up_screen.dart';
import 'package:evently_app/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) {
        return ThemeProvider();
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
    ThemeProvider provider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: provider.themeMode,
      initialRoute: AppRoutes.singup,
      routes: {
        AppRoutes.setup: (context) => SetupScreen(),
        AppRoutes.onBoarding: (context) => OnBoardingScreen(),
        AppRoutes.login:(context)=>LoginScreen(),
        AppRoutes.singup:(context)=>SignUpScreen(),
        
      },
    );
  }
}
