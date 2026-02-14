import 'package:flutter/material.dart';

class TextInputFeild extends StatelessWidget {
  const TextInputFeild({super.key, required this.hintText});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      keyboardType: TextInputType.name,
      decoration: InputDecoration(hintText: hintText),
    );
  }
}
