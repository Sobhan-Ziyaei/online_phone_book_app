class Contact {
  Contact({
    required this.phone,
    required this.fullName,
  });
  late final String phone;
  late final String fullName;

  Contact.fromJson(Map<String, dynamic> json) {
    phone = json['phone'];
    fullName = json['fullname'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['phone'] = phone;
    _data['fullname'] = fullName;
    return _data;
  }
}
