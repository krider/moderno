// ignore_for_file: must_be_immutable, prefer_interpolation_to_compose_strings

import 'package:flutter/cupertino.dart';

class Minutos extends StatelessWidget {
  int mins;

  Minutos({super.key, required this.mins});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Center(
        child: Text(
          mins < 10 ? "0" + mins.toString() : mins.toString(),
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
