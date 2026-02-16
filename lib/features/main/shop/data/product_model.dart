import 'package:greenmart/core/constants/app_images.dart';

class ProductModel {
  final String id;
  final String name;
  final String price; 
  final String weight;
  final String image;
  

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.weight,
    required this.image,
  });
}


List<ProductModel> offers = [
  ProductModel(
    id: '2',
    name: 'Apple',
    price: '\$30.50',
    weight: '7kg',
    image: AppImages.apple,
  ),
  ProductModel(
    id: '3',
    name: 'bread',
    price: '\$20.30',
    weight: '7pcs',
    image: AppImages.bread,
  ),
  ProductModel(
    id: '4',
    name: 'Coke',
    price: '\$3.50',
    weight: '1pcs',
    image: AppImages.coke,
  ),
  ProductModel(
    id: '5',
    name: 'Sprite',
    price: '\$5.50',
    weight: '3pcs',
    image: AppImages.sprite,
  ),
  ProductModel(
    id: '6',
    name: 'Apple Grap',
    price: '\$30.50',
    weight: '17pcs',
    image: AppImages.appleGrapJuice,
  ),
  ProductModel(
    id: '7',
    name: 'Deit Coke',
    price: '\$2.90',
    weight: '1pcs',
    image: AppImages.cokeD,
  ),
];
