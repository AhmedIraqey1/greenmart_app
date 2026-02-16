import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/widgets/product_card.dart';
import 'package:greenmart/core/widgets/text_input_feild.dart';
import 'package:greenmart/features/main/search/widgets/filtered_grid_view.dart';
import 'package:greenmart/features/main/shop/data/product_model.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final focusNode = FocusNode();
  String searchKey = '';

  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(preferredSize: Size(400, 5), child: Container()),
        backgroundColor: AppColors.background,
        leading: IconButton(
          onPressed: () {
            pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        titleSpacing: 0,
        title: Hero(
          tag: 'search',
          child: Material(
            color: Colors.transparent,
            child: TextInputFeild(
              focusNode: focusNode,
              hintText: 'Search Store',
              icon: Icon(Icons.search),
              onChanged: (value) {
                setState(() {
                  searchKey = value;
                });
              },
            ),
          ),
        ),
        actions: [SizedBox(width: 20)],
      ),
      body: FilteredGridView(products: getProductsByName(searchKey)),
    );
  }
}

List<ProductModel> getProductsByName(String searchKey) {
  List<ProductModel> filteredProducts = [];
  for (var product in offers) {
    if (product.name.toLowerCase().contains(searchKey.toLowerCase())) {
      filteredProducts.add(product);
    }
  }
  return filteredProducts;
}
