import 'package:flutter/material.dart';
import 'package:phone_book_app/constants/custom_color.dart';
import 'package:phone_book_app/utils/network.dart';
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
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
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
                  errorText: 'لطفا نام را وارد کنید',
                  labelText: 'نام',
                  inputType: TextInputType.name,
                  controller: AddEditScreen.nameController,
                  hintText: 'نام',
                ),
                const SizedBox(
                  height: 30,
                ),
                PersonalTextField(
                  errorText: 'لطفا شماره همراه را وارد کنید',
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
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Network.postData(fullName: AddEditScreen.nameController.text, phone: AddEditScreen.numberController.text);
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
