import 'package:evently_app/core/routing/app_routes.dart';
import 'package:evently_app/core/styling/app_assets.dart';
import 'package:evently_app/core/widgets/primary_button.dart';
import 'package:evently_app/features/setup/widgets/language_switch.dart';
import 'package:evently_app/features/setup/widgets/theme_switch.dart';
import 'package:flutter/material.dart';

class SetupScreen extends StatefulWidget {
  const SetupScreen({super.key});

  @override
  State<SetupScreen> createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
  String selectedLang = 'en';
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          AppAssets.topOnBoardingText,
          width: screenWidth * 0.45,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Image.asset(
                AppAssets.setupImage,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              const SizedBox(height: 24),
              Text(
                'Personalize Your Experience',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),

              Text(
                'Choose your preferred theme and\nlanguage to get started with a\ncomfortable, tailored experience that suits\nyour style.',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    'Language',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      LanguageSwitch(
                        title: 'English',
                        languageCode: 'en',
                        selectedLanguage: selectedLang,
                      ),
                      SizedBox(width: 8),
                      LanguageSwitch(
                        title: 'Arabic',
                        languageCode: 'ar',
                        selectedLanguage: selectedLang,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 25),

              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(
                    'Theme',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      ThemeSwitch(
                        iconPath: AppAssets.sun,
                        mode: ThemeMode.light,
                      ),
                      SizedBox(width: 8),
                      ThemeSwitch(
                        iconPath: AppAssets.moon,
                        mode: ThemeMode.dark,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 78),
              PrimaryButton(
                title: 'Let\'s start',
                onClicked: () {
                  Navigator.of(context).pushNamed(AppRoutes.singup);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
