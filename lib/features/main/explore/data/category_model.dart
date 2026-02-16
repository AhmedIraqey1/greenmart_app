import 'package:greenmart/core/constants/app_images.dart';

class CategoryModel {
  final String id;
  final String name;
  final String image;

  CategoryModel.CategoryModel({
    required this.id,
    required this.name,
    required this.image,
  });
}

List<CategoryModel> category = [
  CategoryModel.CategoryModel(
    id: '2',
    name: 'Fresh Fruits & Vegetable',
    image: AppImages.vegtables,
  ),
  CategoryModel.CategoryModel(
    id: '3',
    name: 'Bakery & Snacks',
    image: AppImages.bread,
  ),
  CategoryModel.CategoryModel(
    id: '4',
    name: 'Dairy & Eggs',
    image: AppImages.milks,
  ),
  CategoryModel.CategoryModel(
    id: '5',
    name: 'Meat & Fish',
    image: AppImages.meats,
  ),
  CategoryModel.CategoryModel(
    id: '6',
    name: 'Beverages',
    image: AppImages.soda,
  ),
  CategoryModel.CategoryModel(
    id: '7',
    name: 'Cooking Oil & Ghee',
    image: AppImages.oils,
  ),
];
