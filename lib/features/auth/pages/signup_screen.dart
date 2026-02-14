import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constants/app_icons.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/input_feild.dart';
import 'package:greenmart/core/widgets/main_button.dart';
import 'package:greenmart/core/widgets/passwordt_feild%20copy.dart';
import 'package:greenmart/core/widgets/text_input_feild.dart';
import 'package:greenmart/features/auth/pages/login_screen.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
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
                'Signup',
                style: TextStyles.title,
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 16),
              Text(
                'Enter your credentials to continue',
                style: TextStyles.caption.copyWith(color: Colors.grey[600]),
              ),
              SizedBox(height: 36),
              Text(
                'Name',
                style: TextStyles.captionB.copyWith(
                  color: AppColors.iconsColor,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 8),

              TextInputFeild(hintText: 'Enter your name'),
              SizedBox(height: 20),
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

              SizedBox(height: 20),
              MainButton(
                onPressed: () {},
                text: 'Signup',
                height: 58,
                width: double.infinity,
              ),
              SizedBox(height: 13),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?'),
                    TextButton(
                      onPressed: () {
                        pushReplacementTo(context, LoginScreen());
                      },
                      child: Text('Login'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
