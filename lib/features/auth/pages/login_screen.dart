import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constants/app_icons.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/input_feild.dart';
import 'package:greenmart/core/widgets/main_button.dart';
import 'package:greenmart/core/widgets/passwordt_feild%20copy.dart';
import 'package:greenmart/features/auth/pages/forgot_password_screen.dart';
import 'package:greenmart/features/auth/pages/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(AppIcons.orangeCorrot),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Login',
                    style: TextStyles.title,
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Welcome back! Please login to your account.',
                    style: TextStyles.caption.copyWith(color: Colors.grey[600]),
                  ),
                  SizedBox(height: 36),
                  Text(
                    'Email',
                    style: TextStyles.captionB.copyWith(
                      color: AppColors.iconsColor,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 8),

                  InputFeild(hintText: 'Enter your email'),
                  SizedBox(height: 20),
                  Text(
                    'Password',
                    style: TextStyles.captionB.copyWith(
                      color: AppColors.iconsColor,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 8),

                  PasswordFeild(hintText: 'Enter your password'),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        pushTo(context, ForgotPassword());
                      },
                      child: Text('Forgot Password?'),
                    ),
                  ),
                  SizedBox(height: 30),
                  MainButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    text: 'Login',
                    height: 58,
                    width: double.infinity,
                  ),
                  SizedBox(height: 13),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Dont have an account?'),
                        TextButton(
                          onPressed: () {
                            pushTo(context, Signup());
                          },
                          child: Text('Signup'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
