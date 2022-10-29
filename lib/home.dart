import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rowcrossalignment/pg.dart';
import 'package:rowcrossalignment/row.dart';
import 'package:rowcrossalignment/testpg.dart';

class HomePg extends StatelessWidget {
  const HomePg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => UI());
              },
              child: Text("Page1"),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => UII());
            },
            child: Text("Page2"),
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(() => Phonepay());
              },
              child: Text("phone pay"))
        ],
      ),
    );
  }
}
