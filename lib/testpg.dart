import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Phonepay extends StatelessWidget {
  const Phonepay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        height: Get.height * 0.1,
        color: Colors.lightBlueAccent.shade700,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavItem(icon: Icons.home, text: "Home"),
            NavItem(icon: Icons.store, text: "Stores"),
            NavItem(icon: Icons.inbox, text: "Insurance"),
            NavItem(icon: Icons.currency_rupee_sharp, text: "Wealth"),
            NavItem(icon: Icons.history, text: "History"),
          ],
        ),
      ),
      backgroundColor: Colors.indigo.shade300,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: [
                Container(
                    height: Get.height * 0.25,
                    width: Get.width * 0.9,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue.shade200,
                    ),
                    child: Image.asset(
                      "assets/phonepay.png",
                      fit: BoxFit.fitWidth,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text(
                      "Transfer money",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Custom(
                          icon: Icons.contact_phone, text: "To mobile Number"),
                      const Custom(
                          icon: Icons.account_balance_outlined,
                          text: "To bank /UPI ID"),
                      const Custom(
                          icon: Icons.switch_access_shortcut_add_rounded,
                          text: "To self account"),
                      const Custom(
                          icon: Icons.account_balance,
                          text: "cheak bank Balance"),
                    ]),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  height: Get.height * 0.07,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: const [
                      Text(
                        "My UPI ID:",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "8263879456@ybl",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Second(
                        icons: Icons.phonelink_off_outlined,
                        textt: "Phonepe wallet"),
                    Second(icons: Icons.hotel_class, textt: "Rewards"),
                    Second(
                        icons: Icons.switch_video_rounded,
                        textt: "Refer & get 100")
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.greenAccent.shade200,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Recharge & Pay bills"),
                      Text("My Bill"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.indigo.shade500,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Third(
                              icon: Icons.mobile_friendly,
                              text: "Mobile Recharge"),
                          Third(icon: Icons.add_business_rounded, text: "DTH"),
                          Third(
                              icon: Icons.electric_meter_sharp,
                              text: "Electricity"),
                          Third(
                              icon: Icons.credit_card,
                              text: "Credit card Bill Payment")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Third(icon: Icons.home, text: "Rent payment"),
                          Third(
                              icon: Icons.backup_table_outlined,
                              text: "Loan Repayment"),
                          Third(
                              icon: Icons.cast_for_education_sharp,
                              text: "Education fees"),
                          Third(
                              icon: Icons.arrow_forward_ios_outlined,
                              text: "See All")
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final IconData icon;
  final String text;
  const NavItem({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Color.fromARGB(255, 19, 18, 18)),
            child: Icon(
              icon,
              color: Colors.white,
            )),
        SizedBox(
          height: 5,
        ),
        Text(
          text,
        ),
      ],
    );
  }
}

class Third extends StatelessWidget {
  final IconData icon;
  final String text;
  const Third({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.19,
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 40,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class Second extends StatelessWidget {
  final IconData icons;
  final String textt;
  const Second({
    Key? key,
    required this.icons,
    required this.textt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: Get.height * 0.123,
      width: Get.width * 0.3,
      decoration: BoxDecoration(
          color: Colors.lightBlue.shade700,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            icons,
            color: Colors.white,
            size: 35,
          ),
          Text(
            textt,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class Custom extends StatelessWidget {
  final IconData icon;
  final String text;
  const Custom({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.deepPurple.shade800),
      width: Get.width * 0.2,
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Icon(
            icon,
            size: 36,
            color: Colors.white,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
