import 'package:flutter/material.dart';
import 'package:materi10_project/widgets/contact_widget.dart';

class ContactNumber extends StatelessWidget {
  const ContactNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Contact(
          alphabet: 'L',
          name: 'Leane Graham',
          number: '1-234-567-8901',
        ),
        Contact(
          alphabet: 'E',
          name: 'Ervin Howell',
          number: '1-234-567-8901',
        ),
        Contact(
          alphabet: 'C',
          name: 'Clementine Bauch',
          number: '1-234-567-8901',
        ),
        Contact(
          alphabet: 'P',
          name: 'Patricia Lebsack',
          number: '1-234-567-8901',
        ),
        Contact(
          alphabet: 'C',
          name: 'Chelsey Dietrich',
          number: '1-234-567-8901',
        ),
        Contact(
          alphabet: 'D',
          name: 'Mrs. Dennis Schulist',
          number: '1-234-567-8901',
        ),
        Contact(
          alphabet: 'K',
          name: 'Kurtis Weissnat',
          number: '1-234-567-8901',
        ),
        Contact(
          alphabet: 'G',
          name: 'Gany',
          number: '1-234-567-8901',
        ),
        Contact(
          alphabet: 'G',
          name: 'Gany',
          number: '1-234-567-8901',
        ),
        Contact(
          alphabet: 'G',
          name: 'Gany',
          number: '1-234-567-8901',
        ),
        Contact(
          alphabet: 'G',
          name: 'Gany',
          number: '1-234-567-8901',
        ),
        Contact(
          alphabet: 'G',
          name: 'Gany',
          number: '1-234-567-8901',
        ),
      ],
    );
  }
}
