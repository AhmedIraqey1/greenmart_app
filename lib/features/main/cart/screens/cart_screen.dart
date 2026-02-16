import 'package:flutter/material.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/main_button.dart';
import 'package:greenmart/features/main/cart/widgets/vertical_product_cart_card.dart';
import 'package:greenmart/main.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Cart', style: TextStyles.title)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                VerticalProductCartCard(
                  image: AppImages.sprite,
                  name: 'Sprite Can',
                  vol: '325ml',
                  price: '1.50',
                  productNum: 1,
                ),
                Divider(),
                VerticalProductCartCard(
                  image: AppImages.cokeD,
                  name: 'Diet Coke Can',
                  vol: '325ml',
                  price: '5',
                  productNum: 8,
                ),
                Divider(),
                VerticalProductCartCard(
                  image: AppImages.appleGrapJuice,
                  name: 'Apple & Grape Juice',
                  vol: '325ml',
                  price: '10',
                  productNum: 5,
                ),
                Divider(),
                VerticalProductCartCard(
                  image: AppImages.coke,
                  name: 'Coca Cola Can',
                  vol: '325ml',
                  price: '2.50',
                  productNum: 1,
                ),
                Divider(),
                VerticalProductCartCard(
                  image: AppImages.pepsi,
                  name: 'Pepsi Can',
                  vol: '325ml',
                  price: '5.50',
                  productNum: 3,
                ),
                SizedBox(height: 10),
                MainButton(
                  text: 'Go to Checkout',
                  onPressed: () {},
                  height: 60,
                  width: double.infinity,
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
