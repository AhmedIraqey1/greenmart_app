import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigations.dart';

import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/features/main/explore/data/category_model.dart';
import 'package:greenmart/features/main/explore/screens/soda_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.model, required this.color});
  final CategoryModel model;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushTo(context, SodaScreen());
      },
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(111, 128, 128, 128),
            style: BorderStyle.solid,
            width: .9,
          ),
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 234, 233, 233),
              blurRadius: 10,

              offset: Offset(3, 5),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(model.image),
              ),
              SizedBox(height: 20),
              Text(model.name, style: TextStyles.button),
            ],
          ),
        ),
      ),
    );
  }
}
