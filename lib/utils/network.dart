import 'package:phone_book_app/models/contact.dart';
import 'package:dio/dio.dart';

class Network {
  static List<Contact> contact = [];
  //
  //Get Data
  static Future<void> getData() async {
    var response = await Dio().get('https://retoolapi.dev/IslnAu/contacts');

    List<Contact> contactList = response.data
        .map<Contact>((jsonMapObject) => Contact.fromJson(jsonMapObject))
        .toList()
        .cast<Contact>();

    contactList.forEach((element) {
      contact.add(element);
    });
  }
}
