import 'package:evently_app/core/routing/app_routes.dart';
import 'package:evently_app/core/theme/app_theme.dart';
import 'package:evently_app/features/edit_event_screen/edit_event_screen.dart';
import 'package:evently_app/features/login_screen/login_screen.dart';
import 'package:evently_app/features/on_boarding/on_boarding_screen.dart';
import 'package:evently_app/features/on_boarding/widgets/shared_pref.dart';
import 'package:evently_app/features/setup/setup_screen.dart';
import 'package:evently_app/features/sign_up_screen/sign_up_screen.dart';
import 'package:evently_app/firebase_options.dart';
import 'package:evently_app/provider/theme_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
await SharedPref.init();
  bool isFirstTime = SharedPref.getBool(key: 'isFirstTime') ?? true;
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) {
        return ThemeProvider();
      },
      child:  MyApp(isFirstTime: isFirstTime),
    ),
  );
}

class MyApp extends StatelessWidget {
    final bool isFirstTime;

  const MyApp({super.key, required this.isFirstTime});

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
      initialRoute: isFirstTime
          ? AppRoutes.onBoarding
          : AppRoutes.editEvent,
      routes: {
        AppRoutes.setup: (context) => SetupScreen(),
        AppRoutes.onBoarding: (context) => OnBoardingScreen(),
        AppRoutes.login:(context)=>LoginScreen(),
        AppRoutes.singup:(context)=>SignUpScreen(),
        AppRoutes.editEvent:(context)=>EditEventScreen(),
        
      },
    );
  }
}
