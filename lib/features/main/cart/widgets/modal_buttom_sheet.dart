import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constants/app_icons.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/main_button.dart';
import 'package:greenmart/features/main/cart/screens/done_screen.dart';

Future<dynamic> modalBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(20),
        ),
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Checkout', style: TextStyles.title),
                IconButton(
                  onPressed: () {
                    pop(context);
                  },
                  icon: Icon(Icons.close),
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery',
                  style: TextStyles.captionB.copyWith(
                    color: AppColors.iconsColor,
                  ),
                ),
                Row(
                  children: [
                    Text('Select Method', style: TextStyles.button.copyWith()),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(AppIcons.open, width: 10),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 5),
            Divider(),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text(
                  'Payment',
                  style: TextStyles.captionB.copyWith(
                    color: AppColors.iconsColor,
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset(AppIcons.card, width: 30),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(AppIcons.open, width: 10),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 5),
            Divider(),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Promo Code',
                  style: TextStyles.captionB.copyWith(
                    color: AppColors.iconsColor,
                  ),
                ),
                Row(
                  children: [
                    Text('Pick discount', style: TextStyles.button.copyWith()),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(AppIcons.open, width: 10),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 5),
            Divider(),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Cost',
                  style: TextStyles.captionB.copyWith(
                    color: AppColors.iconsColor,
                  ),
                ),
                Row(
                  children: [
                    Text('\$13.97', style: TextStyles.button.copyWith()),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(AppIcons.open, width: 10),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 20),
            MainButton(
              text: 'Place Order',
              onPressed: () {
                pushReplacementTo(context, DoneScreen());
              },
              height: 60,
              width: double.infinity,
            ),
          ],
        ),
      );
    },
  );
}
