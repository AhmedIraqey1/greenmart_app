import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/Validations.dart';

class PhoneFeild extends StatelessWidget {
  const PhoneFeild({super.key, required this.hintText});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(hintText: hintText),
      validator: (value) {
        if (value == null || value.isEmpty) return 'Please enter your phone';
        if (!isEGPhone(value)) return 'Please enter a valid Egyptian phone';
        return null;
      },
    );
  }
}
