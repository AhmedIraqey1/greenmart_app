import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constants/app_icons.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/features/main/cart/widgets/container_button.dart';

class VerticalProductCartCard extends StatelessWidget {
  const VerticalProductCartCard({
    super.key,
    required this.image,
    required this.name,
    required this.vol,
    required this.price,
     required this.productNum,
  });
  final String image;
  final String name;
  final String vol;
  final String price;
  final int productNum;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 30,
            children: [
              Image.asset(image, width: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('$name', style: TextStyles.captionB),
                  Text(
                    '$vol',
                    style: TextStyles.caption.copyWith(
                      color: AppColors.iconsColor,
                    ),
                  ),
                  Row(
                    spacing: 15,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ContainerButton(
                        borderColor: const Color.fromARGB(166, 167, 165, 165),
                        iconColor: AppColors.iconsColor,
                        icon: Icons.remove,
                      ),
                      Text('$productNum', style: TextStyles.body),
                      ContainerButton(
                        borderColor: AppColors.primary,
                        iconColor: AppColors.primary,
                        icon: Icons.add,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Text('\$$price', style: TextStyles.captionB),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(AppIcons.open, width: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
