import 'package:flutter/material.dart';
import 'package:phone_book_app/constants/custom_color.dart';
import 'package:phone_book_app/screens/add_edit_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColor.greenColor,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return AddEditScreen();
              },
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      backgroundColor: CustomColor.blackColor,
      appBar: AppBar(
        backgroundColor: CustomColor.blackColor,
        elevation: 0,
        title: const Text('دفترچه تلفن آنلاین'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: const Icon(Icons.import_contacts_sharp),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: CustomColor.greyColor,
                child: Text(
                  '${index + 1}',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              trailing: IconButton(
                color: CustomColor.greyColor,
                onPressed: () {},
                icon: const Icon(Icons.edit),
              ),
              title: const Text(
                'Salam',
                style: TextStyle(color: CustomColor.greenColor),
              ),
              subtitle: const Text(
                '0915',
                style: TextStyle(color: CustomColor.greyColor),
              ),
            );
          },
        ),
      ),
    );
  }
}
