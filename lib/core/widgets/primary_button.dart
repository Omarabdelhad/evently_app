import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final void Function()? onClicked;
  final String title;
  const PrimaryButton({
    super.key,
    required this.onClicked,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onClicked,
        child: Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.labelMedium?.copyWith(fontWeight: .w500, fontSize: 20),
        ),
      ),
    );
  }
}
