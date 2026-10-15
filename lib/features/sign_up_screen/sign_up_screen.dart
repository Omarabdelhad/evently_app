import 'package:evently_app/core/styling/app_assets.dart';
import 'package:evently_app/core/widgets/custom_text_field.dart';
import 'package:evently_app/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passController;
  late TextEditingController confirmPassController;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  void initState() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    passController = TextEditingController();
    confirmPassController = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    passController.dispose();
    emailController.dispose();
    confirmPassController.dispose();
    super.dispose();
  }

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: .start,
            children: [
              const SizedBox(height: 25),
              Text(
                'Create your account',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontWeight: .w600,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 24),
              CustomTextField(
                hintText: 'Enter your name',
                prfixPath: AppAssets.profile,
                controller: nameController,
                keyboard: TextInputType.text,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter your name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              CustomTextField(
                keyboard: TextInputType.emailAddress,

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter your email';
                  }
                  if (!RegExp(
                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                  ).hasMatch(value)) {
                    return 'Invalid email';
                  }
                  return null;
                },
                hintText: 'Enter your email',
                prfixPath: AppAssets.email,
                controller: emailController,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                isPassword: true,

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter your password';
                  }
                  if (!RegExp(
                    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
                  ).hasMatch(value)) {
                    return 'Invalid password';
                  }
                  return null;
                },
                hintText: 'Enter your password',
                prfixPath: AppAssets.lock,
                controller: passController,
                keyboard: TextInputType.text,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                isPassword: true,
                hintText: 'Confirm your password',
                prfixPath: AppAssets.lock,
                controller: confirmPassController,
                keyboard: TextInputType.text,
                validator: (value) {
                  if (value != passController.text) {
                    return 'Password don\'t match';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 52),

              PrimaryButton(
                onClicked: () {
                  if (formKey.currentState?.validate() ?? false) {
                    print('successfully');
                  }
                },
                title: 'Sign up',
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: .center,
                children: [
                  Text(
                    'Already have an account?',
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(fontSize: 14),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
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
