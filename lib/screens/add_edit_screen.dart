import 'package:flutter/material.dart';
import 'package:phone_book_app/constants/custom_color.dart';
import 'package:phone_book_app/widgets/MyButton.dart';
import 'package:phone_book_app/widgets/MyTextField.dart';
import 'package:phone_book_app/widgets/PersonalTextField.dart';

class AddEditScreen extends StatefulWidget {
  static TextEditingController nameController = TextEditingController();
  static TextEditingController numberController = TextEditingController();

  AddEditScreen({Key? key}) : super(key: key);

  @override
  State<AddEditScreen> createState() => _AddEditScreenState();
}

class _AddEditScreenState extends State<AddEditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.blackColor,
        elevation: 0,
        title: const Text('مخاطب جدید'),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      backgroundColor: CustomColor.blackColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              PersonalTextField(
                labelText: 'نام',
                inputType: TextInputType.name,
                controller: AddEditScreen.nameController,
                hintText: 'نام',
              ),
              const SizedBox(
                height: 30,
              ),
              PersonalTextField(
                labelText: 'شماره همراه',
                inputType: TextInputType.number,
                controller: AddEditScreen.numberController,
                hintText: 'شماره همراه',
              ),
              const SizedBox(
                height: 30,
              ),
              MyButton(
                child: Text(
                  'اضافه کردن',
                  style: const TextStyle(fontSize: 15),
                ),
                width: 150,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
