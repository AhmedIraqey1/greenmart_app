import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constants/app_icons.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/main_button.dart';
import 'package:greenmart/features/auth/pages/login_screen.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            //image
            Container(
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/man.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                ),
              ),
            ),
            //content
            Positioned(
              bottom: 50,
              left: 0,
              right: 0,
              child: Column(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppIcons.orangeCorrot,
                    colorFilter: ColorFilter.mode(
                      AppColors.background,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Welcome\n to GreenMart',
                    textAlign: TextAlign.center,
                    style: TextStyles.headline.copyWith(color: Colors.white),
                  ),

                  Text(
                    'Ger your groceries in as fast as one hour',
                    style: TextStyles.caption.copyWith(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  MainButton(
                    onPressed: () {
                      pushReplacementTo(context, LoginScreen());
                    },
                    text: 'Get Started',
                    height: 58,
                    width: 319,

                  ),
                  SizedBox(height: 60),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
