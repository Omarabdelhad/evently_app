import 'package:evently_app/core/styling/app_assets.dart';
import 'package:evently_app/features/setup/widgets/language_switch.dart';
import 'package:flutter/material.dart';

class SetupScreen extends StatefulWidget {
  const SetupScreen({super.key});

  @override
  State<SetupScreen> createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
  String selectedLang = 'ar';
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
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 8),

              Text(
                'Choose your preferred theme and language to get started with a comfortable, tailored experience that suits your style.',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(
                    'Language',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  LanguageSwitch(
                    title: 'English',
                    languageCode: 'en',
                    selectedLanguage: selectedLang,
                  ),
                  LanguageSwitch(
                    title: 'Arabic',
                    languageCode: 'ar',
                    selectedLanguage: selectedLang,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
