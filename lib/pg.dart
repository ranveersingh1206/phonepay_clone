import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class UII extends StatelessWidget {
  const UII({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "grassisum",
                    style: GoogleFonts.sacramento(
                        fontSize: 50, color: Colors.green),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Row(
                      children: [
                        Image.asset("assets/dogpic.png"),
                        SizedBox(width: 24),
                        Image.asset("assets/vector.png")
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Recently added",
                    style: TextStyle(fontSize: 15),
                  ),
                  Icon(Icons.arrow_drop_down_rounded),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Box(
                        text: "Data strutures and algo",
                        textt: " ",
                        size: "1file",
                        sizee: "760kb",
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Box(
                        text: "DSA",
                        textt: "Notes",
                        size: "3 files",
                        sizee: "29mb",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Box(
                        text: "DSA Notes",
                        textt: "",
                        size: "3 file",
                        sizee: "29mb",
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Box(
                        text: "Data Structre",
                        textt: "Algo",
                        size: "1 file",
                        sizee: "760 mb",
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  const Box(
      {super.key,
      required this.text,
      required this.textt,
      required this.size,
      required this.sizee});
  final String text, textt, size, sizee;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: 159,
      // height: 150,
      color: Colors.grey.shade200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/folderimg.png"),
          SizedBox(
            height: 20,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 20),
          ),
          Row(
            children: [
              Text(
                textt,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(size),
              SizedBox(
                width: 10,
              ),
              Text(sizee),
            ],
          ),
        ],
      ),
    );
  }
}
