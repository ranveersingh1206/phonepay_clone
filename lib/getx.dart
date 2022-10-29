import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Getx extends StatefulWidget {
  const Getx({super.key});

  @override
  State<Getx> createState() => _GetxState();
}

class _GetxState extends State<Getx> {
  Color bgColor = Colors.green;

  final List<Color> colors = [
    Colors.greenAccent,
    Colors.black,
    Colors.redAccent,
    Colors.purpleAccent,
    Colors.tealAccent,
  ];

  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Text(number.toString()),
              margin: EdgeInsets.only(left: 50, right: 50),
              alignment: Alignment.center,
              height: Get.height * 0.25,
              width: Get.width * 0.6,
              decoration: BoxDecoration(
                color: bgColor,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      bgColor = colors[Random().nextInt(5)];
                    });
                  },
                  child: Text("click here to change color")),
            )
          ],
        ),
      ),
    );
  }
}
