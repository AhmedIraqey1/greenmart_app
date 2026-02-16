import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constants/app_icons.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/widgets/custom_svg_picture.dart';
import 'package:greenmart/features/main/cart/screens/cart_screen.dart';
import 'package:greenmart/features/main/explore/screens/explore_screen.dart';
import 'package:greenmart/features/main/favorite/screens/favorites_screen.dart';
import 'package:greenmart/features/main/shop/screens/shop_screen.dart';
import 'package:greenmart/features/main/account/screens/user_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    Center(child: ShopScreen()),
    Center(child: ExploreScreen()),
    Center(child: CartScreen()),
    Center(child: FavoritesScreen()),
    Center(child: UserScreen()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: screens[currentIndex], bottomNavigationBar: NavBar());
  }

  Container NavBar() {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
        color: AppColors.background,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(45, 0, 0, 0),
            blurRadius: 33,

            offset: Offset(0, -5),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.shop),
            activeIcon: CustomSvgPicture(
              path: AppIcons.shop,
              color: AppColors.primary,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.explore),
            activeIcon: CustomSvgPicture(
              path: AppIcons.explore,
              color: AppColors.primary,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.cart),
            activeIcon: CustomSvgPicture(
              path: AppIcons.cart,
              color: AppColors.primary,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.favorite),
            activeIcon: CustomSvgPicture(
              path: AppIcons.favorite,
              color: AppColors.primary,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.user),
            activeIcon: CustomSvgPicture(
              path: AppIcons.user,
              color: AppColors.primary,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
