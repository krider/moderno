// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';

class Horas extends StatelessWidget {
  int hrs;

  Horas({super.key, required this.hrs});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Center(
        child: Text(
          hrs.toString(),
          style: const TextStyle(
            fontSize: 35,
            color: Color(0xffF2F2F2),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
