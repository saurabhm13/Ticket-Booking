import 'package:flutter/material.dart';
import 'package:ticket_booking/screens/ticket_view.dart';
import 'package:ticket_booking/utils/app_info_list.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widgets/column_layout.dart';
import 'package:ticket_booking/widgets/layout_builder.dart';
import 'package:ticket_booking/widgets/tickets_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              const SizedBox(height: 40,),
              Text("Tickets", style: Styles.headlineStyle1,),
              const SizedBox(height: 20,),
              const AppTicketTab(firstTab: "Upcoming", secondTab: "Previous"),
              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: TicketView(ticket: ticketList[0], isColor: true,),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(firstText: "Flutter DB", secondText: "Passenger", alignment: CrossAxisAlignment.start,),
                        AppColumnLayout(firstText: "5221 367234", secondText: "Passport", alignment: CrossAxisAlignment.end,),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    const AppLayoutBuilderWidget(isColor: true, section: 15),
                    const SizedBox(height: 15,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(firstText: "23894 98 92841374", secondText: "Number of E-ticket", alignment: CrossAxisAlignment.start,),
                        AppColumnLayout(firstText: "F7DF02J", secondText: "Booking code", alignment: CrossAxisAlignment.end,),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    const AppLayoutBuilderWidget(isColor: true, section: 15),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 60,
                                  height: 25,
                                  child: Image.asset("assets/images/visa.png",),
                                ),
                                Text("*** 2353", style: Styles.headlineStyle3,)

                              ],
                            ),
                            const SizedBox(height: 5,),
                            Text("Payment method", style: Styles.headlineStyle4,)
                          ],
                        ),
                        const AppColumnLayout(firstText: "\$249.99", secondText: "Price", alignment: CrossAxisAlignment.end)
                      ],
                    ),
                    const SizedBox(height: 15,),
                    const AppLayoutBuilderWidget(isColor: true, section: 15),
                    const SizedBox(height: 15,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        data: 'https//github.com/saurabhm13',
                        drawText: false,
                        width: double.infinity,
                        height: 70,
                        color: Styles.textColor,

                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
