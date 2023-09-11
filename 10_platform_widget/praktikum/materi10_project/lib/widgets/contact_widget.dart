import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  String name;
  String number;
  String alphabet;
  Contact({
    super.key,
    required this.name,
    required this.number,
    required this.alphabet,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: 70,
      color: Colors.white,
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green[500],
            ),
            child: Text(
              alphabet.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                number,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
