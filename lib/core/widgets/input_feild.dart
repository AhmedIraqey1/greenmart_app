import 'package:flutter/material.dart';


class InputFeild extends StatelessWidget {
  const InputFeild({
    super.key, required this.hintText,
  });
  final String hintText ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        
      ),
    );
  }
}
