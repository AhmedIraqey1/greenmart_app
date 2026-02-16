import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/product_card.dart';
import 'package:greenmart/features/main/shop/data/product_model.dart';

class SodaScreen extends StatefulWidget {
  const SodaScreen({super.key});

  @override
  State<SodaScreen> createState() => _SodaScreenState();
}

class _SodaScreenState extends State<SodaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frash Fruits & Vegetable', style: TextStyles.button),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.filter_alt_outlined)),
        ],
        leading: IconButton(
          onPressed: () {
            pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          // childAspectRatio: .78,
          mainAxisExtent: 280,
        ),
        itemBuilder: (context, index) {
          return ProductCard(model: offers[index]);
        },
        itemCount: offers.length,
      ),
    );
  }
}
