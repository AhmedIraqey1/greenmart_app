import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/main_button.dart';
import 'package:greenmart/core/widgets/phone_feld.dart';
import 'package:greenmart/features/auth/pages/verification_screen.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(
          onPressed: () {
            pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Enter your mobile number', style: TextStyles.title),
              SizedBox(height: 7),
              Text(
                'We need to verify you. We will send you a one time verification code. ',
                style: TextStyles.caption,
              ),
              SizedBox(height: 42),
              PhoneFeild(hintText: '01xxxxxxxxx'),
              SizedBox(height: 46),
              MainButton(
                onPressed: () {
                  pushReplacementTo(context, VerificationScreen());
                },
                text: 'Next',
                height: 58,
                width: double.infinity,
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
