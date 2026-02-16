import 'package:flutter/material.dart';
import 'package:greenmart/core/widgets/product_card.dart';
import 'package:greenmart/features/main/shop/data/product_model.dart';

class FilteredGridView extends StatelessWidget {
  const FilteredGridView({super.key, required this.products});
  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        // childAspectRatio: .78,
        mainAxisExtent: 280,
      ),
      itemBuilder: (context, index) {
        return ProductCard(model: products[index]);
      },
      itemCount: products.length,
    );
  }
}
