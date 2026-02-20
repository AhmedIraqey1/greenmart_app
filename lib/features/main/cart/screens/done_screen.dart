import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenmart/core/constants/app_icons.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/main_button.dart';
import 'package:greenmart/features/main/main_screen.dart';
import 'package:greenmart/features/main/shop/screens/shop_screen.dart';

class DoneScreen extends StatelessWidget {
  const DoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            spacing: 30,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(AppIcons.done),
              Text('Your Order has been accepted', style: TextStyles.title),
              Text(
                'Your items has been placcd and is on it’s way to being processed',
                style: TextStyles.caption.copyWith(color: AppColors.iconsColor),
              ),
              MainButton(
                text: 'Go To Home',
                onPressed: () {
                  pushReplacementTo(context, MainScreen());
                },
                height: 60,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
