import 'package:flutter/material.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widgets/icon_text_widgets.dart';
import 'package:ticket_booking/widgets/tickets_tabs.dart';

import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'What are\nyou looking for?',
            style: Styles.headlineStyle1.copyWith(fontSize: 35),
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTab(firstTab: "Airline tickets", secondTab: "Hotels"),
          const SizedBox(
            height: 25,
          ),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          const SizedBox(
            height: 15,
          ),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          const SizedBox(
            height: 25,
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              decoration: BoxDecoration(
                color: Color(0xD91130CE),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Find ticket",
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              )),
          const SizedBox(
            height: 40,
          ),
          const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all"),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 435,
                width: size.width*0.42,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
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
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/img.jpeg"
                          ),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    const SizedBox(height: 12,),
                    Text("20% discount on the early booking of this flight. Don't miss",
                    style: Styles.headlineStyle2,)
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width*0.44,
                        height: 210,
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        decoration: BoxDecoration(
                            color: const Color(0xFF3ab8b8),
                            borderRadius: BorderRadius.circular(18)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount\nfor survey",
                              style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 17),),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("Take the survey about our services and get discount",
                              style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 16),),

                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 18, color: Color(0xFF189999)),
                              color: Colors.transparent
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: size.width*0.44,
                    height: 210,
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text("Take love",
                        style: Styles.headlineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,),
                        const SizedBox(
                          height: 5,
                        ),
                        RichText(text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '🤗',
                              style: TextStyle(fontSize: 30)
                            ),
                            TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 45)
                            ),
                            TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 30)
                            ),
                          ]
                        ))
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
