import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';

import '../models/contact.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  List<ContactModels> contacts = [];
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController colorController = TextEditingController();
  TextEditingController fileController = TextEditingController();

  int selectedIndex = -1;

  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nama harus diisi oleh user.';
    }

    final words = value.split(' ');
    if (words.length < 2) {
      return 'Nama harus terdiri dari minimal 2 kata.';
    }

    for (final word in words) {
      if (!isCapitalized(word)) {
        return 'Setiap kata harus dimulai dengan huruf kapital.';
      }
    }

    for (final word in words) {
      if (containsSpecialCharacters(word)) {
        return 'Nama tidak boleh mengandung angka atau karakter khusus.';
      }
    }

    return null;
  }

  bool isCapitalized(String word) {
    return word.isNotEmpty && word[0] == word[0].toUpperCase();
  }

  bool containsSpecialCharacters(String word) {
    final RegExp specialChars = RegExp(r'[!@#\$%^&*(),.?":{}|<>]');
    return specialChars.hasMatch(word);
  }

  String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nomor telepon harus diisi oleh user.';
    }

    if (value.length < 7) {
      return 'Digit nomer harus lebih dari 7.';
    } else if (value.length > 15) {
      return 'Digit nomer harus kurang dari 15';
    } else if (!value.startsWith('0')) {
      return 'Nomor telepon harus dimulai dengan angka 0.';
    }

    return null;
  }

  DateTime dueDate = DateTime.now();
  final currentDate = DateTime.now();

  Color currentColor = Colors.red;

  List<PlatformFile> platformFileUrl = [];
  final List<File> _fileUrl = [];

  void pickFile() async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: [
        'jpg',
        'png',
      ],
    );
    if (result == null && result!.files.single.path != null) return;

    File file = File(result.files.single.path!);
    setState(
      () {
        platformFileUrl.add(result.files.first);
        _fileUrl.add(file);
      },
    );
  }

  void openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      /// AppBar
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Contacts',
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Column(
                children: [
                  /// Phone Icon
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10, top: 10),
                    child: Icon(
                      Icons.phone_android,
                    ),
                  ),

                  /// Create New Contacts
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Create New Contacts',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  ///
                  const Padding(
                    padding: EdgeInsets.only(bottom: 30, left: 10, right: 10),
                    child: Text(
                      'A dialog is a type of modal window appears in front of app content to providecrictical information, or prompt for decision to provide critical information, or prompt for a decision to be made.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        /// Name
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          decoration: BoxDecoration(
                            color: Colors.lightBlue[100],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Name',
                              ),
                              TextFormField(
                                keyboardType: TextInputType.name,
                                autocorrect: false,
                                textCapitalization: TextCapitalization.words,
                                controller: nameController,
                                decoration: const InputDecoration(
                                  hintText: 'Insert Your Name',
                                ),
                                validator: validateName,
                              ),
                            ],
                          ),
                        ),

                        /// Phone Number
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          padding: const EdgeInsets.only(
                              right: 10, left: 10, top: 10),
                          decoration: BoxDecoration(
                            color: Colors.lightBlue[100],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Number',
                              ),
                              TextFormField(
                                keyboardType: TextInputType.number,
                                controller: phoneNumberController,
                                decoration: const InputDecoration(
                                  hintText: '+62 . . . . .',
                                ),
                                validator: validatePhoneNumber,
                              ),
                            ],
                          ),
                        ),

                        /// Date
                        Container(
                          color: Colors.lightBlue[100],
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              controller: dateController,
                              onTap: () async {
                                final selectDate = await showDatePicker(
                                  context: context,
                                  initialDate: currentDate,
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(currentDate.year + 5),
                                );
                                if (selectDate != null) {
                                  dateController.text =
                                      DateFormat('EEEE, dd MMMM yyyy')
                                          .format(dueDate);
                                }
                              },
                              decoration: const InputDecoration(
                                labelText: 'Date of Birth',
                                suffixIcon: Icon(
                                  Icons.date_range,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),

                        /// Color
                        Container(
                          color: Colors.lightBlue[100],
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text('Pick Your Color'),
                                    content: SingleChildScrollView(
                                      child: ColorPicker(
                                        pickerColor: currentColor,
                                        onColorChanged: (color) {
                                          setState(
                                            () {
                                              currentColor = color;
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text('Save'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            decoration: InputDecoration(
                              labelText: 'Your Favorite Color',
                              suffixIcon: Container(
                                height: 20,
                                width: 20,
                                color: currentColor,
                              ),
                            ),
                          ),
                        ),

                        /// File
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          padding: const EdgeInsets.all(10),
                          color: Colors.lightBlue[100],
                          child: TextFormField(
                            controller: colorController,
                            decoration: const InputDecoration(
                              labelText: 'File',
                              suffixIcon: Icon(
                                Icons.file_copy,
                                color: Colors.black,
                              ),
                            ),
                            onTap: () {
                              pickFile();
                            },
                          ),
                        ),

                        /// Submit Button
                        Container(
                          margin: const EdgeInsets.only(
                            right: 10,
                          ),
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.lightBlue[700],
                              ),
                            ),
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                String name = nameController.text.trim();
                                String phoneNumber =
                                    phoneNumberController.text.trim();
                                String date = dateController.text.trim();
                                int color = currentColor.value;
                                String file = _fileUrl.first.toString();

                                if (selectedIndex == -1) {
                                  setState(
                                    () {
                                      nameController.text = '';
                                      phoneNumberController.text = '';
                                      dateController.text = '';
                                      colorController.text = '';
                                      fileController.text = '';
                                      contacts.add(
                                        ContactModels(
                                          name: name,
                                          phoneNumber: phoneNumber,
                                          date: date,
                                          color: color,
                                          file: file,
                                        ),
                                      );
                                    },
                                  );
                                } else {
                                  setState(
                                    () {
                                      contacts[selectedIndex] = ContactModels(
                                        name: name,
                                        phoneNumber: phoneNumber,
                                        date: date,
                                        color: color,
                                        file: file,
                                      );
                                    },
                                  );
                                  nameController.clear();
                                  phoneNumberController.clear();
                                  dateController.clear();
                                  colorController.clear();
                                  fileController.clear();
                                  selectedIndex = -1;
                                }
                              }
                            },
                            child: const Text(
                              'Submit',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'List Contact',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              contacts.isEmpty
                  ? const SizedBox()
                  : SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemCount: contacts.length,
                        itemBuilder: (context, index) {
                          return listContact(index);
                        },
                      ),
                    ),
            ],
          ),
        ],
      ),
    );
  }

  Widget listContact(int index) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          child: Text(
            contacts[index].name[0].toUpperCase(),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              contacts[index].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(contacts[index].phoneNumber),
            Text(contacts[index].date),
            Row(
              children: [
                const Text('Color = '),
                Container(
                  height: 20,
                  width: 20,
                  color: Color(contacts[index].color),
                ),
              ],
            ),
            Text(contacts[index].file),
          ],
        ),
        trailing: SizedBox(
          width: 100,
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  nameController.text = contacts[index].name;
                  phoneNumberController.text = contacts[index].phoneNumber;
                  dateController.text = contacts[index].date;
                  colorController.text = contacts[index].color.toString();
                  fileController.text = contacts[index].file;
                  setState(
                    () {
                      selectedIndex = index;
                    },
                  );
                },
                icon: const Icon(Icons.edit),
              ),
              IconButton(
                  onPressed: () {
                    setState(
                      () {
                        contacts.removeAt(index);
                      },
                    );
                  },
                  icon: const Icon(Icons.delete)),
            ],
          ),
        ),
      ),
    );
  }
}
