import 'package:dots_indicator/dots_indicator.dart';
import 'package:evently_app/features/on_boarding/widgets/on_boarding_model.dart';
import 'package:flutter/material.dart';

class OnBoardingItem extends StatelessWidget {
  final OnBoardingModel item;
  final PageController controller;
  final int currentPage;

  const OnBoardingItem({
    super.key,
    required this.item,
    required this.controller,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,

      children: [
        Image.asset(
          item.imagePath,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        const SizedBox(height: 10),
        DotsIndicator(
          dotsCount: OnBoardingModel.onBoardingModelList.length,
          onTap: (position) {
            controller.animateToPage(
              position.toInt(),
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },

          position: currentPage.toDouble(),
          decorator: DotsDecorator(
            activeColor: Theme.of(context).colorScheme.primary,
            color: Theme.of(context).colorScheme.surface,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        const SizedBox(height: 20),

        Align(
          alignment: .centerStart,
          child: Text(
            item.title,

            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const SizedBox(height: 10),

        Text(item.describtion, style: Theme.of(context).textTheme.bodySmall),
        const SizedBox(height: 20),
      ],
    );
  }
}
