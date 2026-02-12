import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/colors.dart';

class PasswordFeild extends StatefulWidget {
  const PasswordFeild({super.key, required this.hintText});
  final String hintText;

  @override
  State<PasswordFeild> createState() => _PasswordFeildState();
}

class _PasswordFeildState extends State<PasswordFeild> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: IconButton(
          icon: Icon(Icons.remove_red_eye, color: AppColors.iconsColor),
          onPressed: () {
            //Handle password visibility toggle
            setState(() {
              // Toggle obscureText value
              obscureText = !obscureText;
            });
          },
        ),
      ),
    );
  }
}
