import 'package:flutter/material.dart';
import 'package:greenmart/core/widgets/product_card.dart';
import 'package:greenmart/features/main/shop/data/product_model.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(00),
      height: 280,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var model = offers[index];
          return ProductCard(model: model);
        },
        separatorBuilder: (context, index) => SizedBox(width: 0),
        itemCount: offers.length,
      ),
    );
  }
}
