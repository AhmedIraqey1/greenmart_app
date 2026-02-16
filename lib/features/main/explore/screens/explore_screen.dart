import 'package:flutter/material.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/text_input_feild.dart';
import 'package:greenmart/features/main/explore/data/category_model.dart';
import 'package:greenmart/features/main/explore/widgets/category_card.dart';
import 'package:greenmart/features/main/shop/data/product_model.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Find Products', style: TextStyles.title)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            children: [
              TextInputFeild(
                hintText: 'Search Store',
                icon: Icon(Icons.search),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    // childAspectRatio: .78,
                    mainAxisExtent: 200,
                  ),
                  itemBuilder: (context, index) {
                    return CategoryCard(
                      model: category[index],
                      color: AppColors.primary.withAlpha(50),
                    );
                  },
                  itemCount: offers.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
