import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/colors.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({
    super.key,
    required this.iconColor,
    required this.borderColor,
    required this.icon,
  });
  final Color borderColor;
  final Color iconColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Colors.transparent,
          border: Border.all(
            style: BorderStyle.solid,
            strokeAlign: .9,
            color: borderColor,
          ),
        ),

        child: Icon(icon, color: iconColor),
      ),
    );
  }
}
