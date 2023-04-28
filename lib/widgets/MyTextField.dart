import 'package:flutter/material.dart';
import 'package:phone_book_app/constants/custom_color.dart';

class MyTextField extends StatelessWidget {
  //
  final TextInputType inputType;
  final TextEditingController controller;
  final String errorText;
  final String hintText;
  final bool isEnabled;
  //
  MyTextField({
    this.inputType = TextInputType.text,
    this.isEnabled = true,
    required this.controller,
    required this.errorText,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: isEnabled,
      keyboardType: inputType,
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorText;
        }
        return null;
      },
      cursorColor: Colors.redAccent,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: CustomColor.greyColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: CustomColor.greenColor),
        ),
        contentPadding: const EdgeInsets.all(10.0),
      ),
    );
  }
}
