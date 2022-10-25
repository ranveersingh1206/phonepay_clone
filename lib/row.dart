import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class UI extends StatelessWidget {
  const UI({super.key});

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
                  Row(
                    children: [
                      Text(
                        "grasisum",
                        style: GoogleFonts.sacramento(
                            fontSize: 50, color: Colors.green),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset("assets/dogpic.png"),
                      SizedBox(
                        width: 24,
                      ),
                      Image.asset("assets/vector.png"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text("Last modified"),
                  Icon(Icons.arrow_drop_down_rounded),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(9)),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Image.asset("assets/pdf.png"),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Dldm notes "), Text("dldm")],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(9)),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Image.asset("assets/pdf.png"),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Dldm notes "), Text("dldm")],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(9)),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Image.asset("assets/pdf.png"),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Dldm notes "), Text("dldm")],
                    
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
