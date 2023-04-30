import 'package:flutter/material.dart';
import 'package:phone_book_app/constants/custom_color.dart';

class PersonalTextField extends StatelessWidget {
  //
  final TextInputType inputType;
  final TextEditingController controller;
  final String hintText;
  final String errorText;

  final String labelText;
  //
  const PersonalTextField({
    Key? key,
    required this.errorText,
    required this.labelText,
    required this.inputType,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorText;
        }
        return null;
      },
      style: const TextStyle(
        color: Colors.white,
      ),
      controller: controller,
      keyboardType: inputType,
      decoration: InputDecoration(
          label: Text(labelText),
          labelStyle: const TextStyle(color: CustomColor.greyColor),
          border: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: CustomColor.greyColor,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            borderSide: BorderSide(
              color: CustomColor.greyColor,
              width: 3.0,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            borderSide: BorderSide(
              color: CustomColor.greenColor,
            ),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: CustomColor.greyColor,
          )),
    );
  }
}
