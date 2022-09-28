// ignore_for_file: file_names, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:moderno/horas.dart';
import 'package:moderno/minutos.dart';
import 'tipos.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late FixedExtentScrollController _controller;

  @override
  void initState() {
    super.initState();

    _controller = FixedExtentScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            child: ListWheelScrollView.useDelegate(
              controller: _controller,
              itemExtent: 50,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: const FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 13,
                builder: (context, index) {
                  return Horas(
                    hrs: index,
                  );
                },
              ),
            ),
          ),
          SizedBox(
            width: 100,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: const FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 61,
                builder: (context, index) {
                  return Minutos(
                    mins: index,
                  );
                },
              ),
            ),
          ),
          //****tipo de hora am o pm */
          const SizedBox(width: 10),
          SizedBox(
            width: 100,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: const FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 2,
                builder: (context, index) {
                  if (index == 0) {
                    return AmPm(
                      isAmPm: true,
                    );
                  } else {
                    return AmPm(
                      isAmPm: false,
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
