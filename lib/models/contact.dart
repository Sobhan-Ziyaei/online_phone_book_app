class Contact {
  Contact({
    required this.phone,
    required this.fullname,
  });
  late final String phone;
  late final String fullname;

  Contact.fromJson(Map<String, dynamic> json) {
    phone = json['phone'];
    fullname = json['fullname'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['phone'] = phone;
    _data['fullname'] = fullname;
    return _data;
  }
}