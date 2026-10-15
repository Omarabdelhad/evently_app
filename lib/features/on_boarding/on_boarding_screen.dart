import 'package:evently_app/core/routing/app_routes.dart';
import 'package:evently_app/core/styling/app_assets.dart';
import 'package:evently_app/core/widgets/primary_button.dart';
import 'package:evently_app/features/on_boarding/widgets/on_boarding_item.dart';
import 'package:evently_app/features/on_boarding/widgets/on_boarding_model.dart';
import 'package:evently_app/features/on_boarding/widgets/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _controller = PageController();
  int currentPage = 0;
  @override
  void initState() {
    // TODO: implement initState
    _controller = PageController();
    super.initState();
  }

  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  bool get isLastPage =>
      currentPage == OnBoardingModel.onBoardingModelList.length - 1;
      Future<void> _finishOnBoarding() async {
    await SharedPref.setBool(key: 'isFirstTime', value: false);
    if (!mounted) return;
    Navigator.pushReplacementNamed(context, AppRoutes.login);
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: currentPage == 0
            ? null
            : IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: Theme.of(
                    context,
                  ).colorScheme.onPrimaryContainer,
                  shape: RoundedRectangleBorder(borderRadius: .circular(8)),
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                onPressed: () {
                  _controller.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                icon: SvgPicture.asset(AppAssets.arrowBack),
              ),
        title: Image.asset(
          AppAssets.topOnBoardingText,
          width: screenWidth * 0.45,
          color: Theme.of(context).colorScheme.primary,
        ),
        actions: [
          if (!isLastPage)
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(
                  context,
                ).colorScheme.onPrimaryContainer,
                shape: RoundedRectangleBorder(borderRadius: .circular(8)),
                side: BorderSide(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              onPressed:  _finishOnBoarding,
              child: Text(
                'Skip',
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: .start,

          children: [
            const SizedBox(height: 16),
            Expanded(
              child: PageView.builder(
                controller: _controller,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: OnBoardingModel.onBoardingModelList.length,
                itemBuilder: (context, index) {
                  final item = OnBoardingModel.onBoardingModelList[index];
                  return OnBoardingItem(
                    item: item,
                    controller: _controller,
                    currentPage: currentPage,
                  );
                },
              ),
            ),
            PrimaryButton(
              onClicked: () {
               if (isLastPage) {
                  _finishOnBoarding();
                } else {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
              title: isLastPage ? 'Get started' : 'Next',
            ),
          ],
        ),
      ),
    );
  }
}
