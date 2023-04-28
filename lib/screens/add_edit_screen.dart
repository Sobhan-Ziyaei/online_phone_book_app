import 'package:flutter/material.dart';
import 'package:phone_book_app/constants/custom_color.dart';
import 'package:phone_book_app/widgets/MyTextField.dart';

class AddEditScreen extends StatefulWidget {
  static final TextEditingController nameController = TextEditingController();
  static final TextEditingController numberController = TextEditingController();

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
              MyTextField(
                controller: AddEditScreen.nameController,
                errorText: 'errorText',
                hintText: 'نام',
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextField(
                controller: AddEditScreen.nameController,
                errorText: 'errorText',
                hintText: 'شماره',
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
