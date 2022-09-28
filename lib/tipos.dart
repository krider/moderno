import 'package:flutter/material.dart';

class AmPm extends StatelessWidget {
  final bool isAmPm;

  const AmPm({super.key, required this.isAmPm});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Center(
        child: Text(
          isAmPm == true ? "AM" : "PM",
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
