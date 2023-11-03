import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widgets/column_layout.dart';
import 'package:ticket_booking/widgets/layout_builder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/img.jpeg"))),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: Styles.headlineStyle1,
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Text(
                    "New-York",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xFFFEF4F3)),
                    child: Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Premium status",
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print("tap");
                    },
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              Positioned(
                top: -45,
                right: -45,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 18, color: const Color(0xFF264CD2))),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You\'v got new award",
                          style: Styles.headlineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: Styles.headlineStyle2.copyWith(
                              fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.9), fontSize: 15),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Text("Accumulated miles", style: Styles.headlineStyle2,),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 1
                )
              ]
            ),
            child: Column(
              children: [
                Text("143348", style: TextStyle(
                  fontSize: 40, color: Styles.textColor, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accrued", style: Styles.headlineStyle4.copyWith(fontSize: 16),),
                    Text("23 May 2023", style: Styles.headlineStyle4.copyWith(fontSize: 16),),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "23 094", secondText: "Miles", alignment: CrossAxisAlignment.start),
                    AppColumnLayout(firstText: "Airline CO", secondText: "Received from", alignment: CrossAxisAlignment.end)

                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const AppLayoutBuilderWidget(isColor: false, section: 15),
                const SizedBox(
                  height: 12,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "24", secondText: "Miles", alignment: CrossAxisAlignment.start),
                    AppColumnLayout(firstText: "Mc Doanal\'s", secondText: "Received from", alignment: CrossAxisAlignment.end)
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const AppLayoutBuilderWidget(isColor: false, section: 15),
                const SizedBox(
                  height: 12,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "528 40", secondText: "Miles", alignment: CrossAxisAlignment.start),
                    AppColumnLayout(firstText: "DBestech", secondText: "Received from", alignment: CrossAxisAlignment.end)
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Text("How to get more miles?",
            style: Styles.textStyle.copyWith(
              color: Styles.primaryColor,
              fontWeight: FontWeight.w500
            ),),
          )
        ],
      ),
    );
  }
}
