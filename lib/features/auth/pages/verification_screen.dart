import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/main_button.dart';
import 'package:greenmart/core/widgets/phone_feld.dart';
import 'package:greenmart/features/auth/pages/forgot_password_screen.dart';
import 'package:greenmart/features/auth/widgets/otp_counter.dart';
import 'package:pinput/pinput.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Enter verification code', style: TextStyles.title),
                SizedBox(height: 7),
                Text(
                  'We have sent SMS to: 01XXXXXXXXXX ',
                  style: TextStyles.caption,
                ),
                SizedBox(height: 42),

                Align(
                  alignment: Alignment.center,
                  child: Pinput(
                    length: 5,
                    defaultPinTheme: PinTheme(
                      padding: EdgeInsets.all(0),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(204, 231, 230, 230),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 31),

                Row(
                  spacing: 40,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend OTP',
                        style: TextStyles.caption.copyWith(
                          color: AppColors.rating,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          pushTo(context, ForgotPassword());
                        },
                        child: Text('Change Phone Number?'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 31),
                MainButton(
                  onPressed: () {},
                  text: 'Confirm',
                  height: 62,
                  width: double.infinity,
                ),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Resend confirmation code (1:23)'),
                      // OtpTimerScreen(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
