import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenmart/core/constants/app_icons.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/counter.dart';
import 'package:greenmart/core/widgets/main_button.dart';
import 'package:greenmart/features/main/cart/screens/cart_screen.dart';
import 'package:greenmart/features/main/favorite/screens/favorites_screen.dart';
import 'package:greenmart/features/main/shop/data/product_model.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.model});
  final ProductModel model;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F3F2),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppIcons.export, width: 20),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF2F3F2),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                ),
                height: MediaQuery.sizeOf(context).height * .3,
                width: double.infinity,
                child: Hero(
                  tag: widget.model.tagKey,
                  child: Image.asset(widget.model.image),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.model.name, style: TextStyles.title),
                            Text(
                              widget.model.weight,
                              style: TextStyles.caption.copyWith(
                                color: AppColors.iconsColor,
                              ),
                            ),
                          ],
                        ),

                        IconButton(
                          onPressed: () {
                            pushTo(context, FavoritesScreen());
                          },
                          icon: Icon(Icons.favorite_border),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Counter(productNum: 1),
                        Text(widget.model.price, style: TextStyles.title),
                      ],
                    ),
                    SizedBox(height: 30),
                    Divider(),
                    ExpansionTile(
                      tilePadding: EdgeInsets.all(0),
                      childrenPadding: EdgeInsets.symmetric(horizontal: 0),
                      title: Text(
                        'Product Details',
                        style: TextStyles.captionB,
                      ),
                      children: [
                        Text(
                          'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                          style: TextStyles.caption.copyWith(
                            color: AppColors.iconsColor,
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Nutritions', style: TextStyles.captionB),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 3,
                            horizontal: 7,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFFF2F3F2),
                          ),
                          child: Center(
                            child: Text(
                              widget.model.weight,
                              style: TextStyles.caption.copyWith(
                                color: AppColors.iconsColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Review', style: TextStyles.captionB),
                        RatingBar.builder(
                          itemSize: 18,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                          itemBuilder: (context, _) =>
                              Icon(Icons.star, color: Color(0xFFF3603F)),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 0, 24.0, 24.0),
        child: MainButton(
          text: 'Add To Cart',
          onPressed: () {
            pushTo(context, CartScreen());
          },
          height: 60,
          width: double.infinity,
        ),
      ),
    );
  }
}
