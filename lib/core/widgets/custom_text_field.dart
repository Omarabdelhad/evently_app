import 'package:evently_app/core/styling/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final String prfixPath;
  final TextEditingController controller;
  final TextInputType keyboard;
  final String? Function(String?)? validator;
  final bool isPassword;
  const CustomTextField({
    super.key,
    this.isPassword = false,
    required this.hintText,
    required this.prfixPath,
    required this.controller,
    required this.keyboard,
    required this.validator,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool visibleOff = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboard,
      validator: widget.validator,
      controller: widget.controller,
      obscureText: widget.isPassword ? visibleOff : false,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        filled: true,
        fillColor: Theme.of(context).colorScheme.onPrimaryContainer,
        hintStyle: Theme.of(
          context,
        ).textTheme.bodySmall?.copyWith(fontSize: 14),
        hintText: widget.hintText,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(widget.prfixPath),
        ),
        prefixIconConstraints: BoxConstraints.tight(Size(40, 40)),

        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    visibleOff = !visibleOff;
                  });
                },
                icon: SvgPicture.asset(AppAssets.eye),
              )
            : null,
      ),
    );
  }
}
