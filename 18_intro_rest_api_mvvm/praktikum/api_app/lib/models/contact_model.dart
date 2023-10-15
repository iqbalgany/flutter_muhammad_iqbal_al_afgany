class Contact {
  String name;
  String phoneNumber;

  Contact({
    required this.name,
    required this.phoneNumber,
  });

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      name: json['name'] ?? '',
      phoneNumber: json['phoneNumber'] ?? '',
    );
  }
}

var contactList = [];
