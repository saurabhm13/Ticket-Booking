import 'package:flutter/material.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widgets/layout_builder.dart';
import 'package:ticket_booking/widgets/ticket_container.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            // Showing Blue part of ticket
            Container(
              decoration: BoxDecoration(
                color: isColor==null?  const Color(0xFF526799): Colors.white,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(21),
                    topLeft: Radius.circular(21)
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                        style: isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white): Styles.headlineStyle3,),
                      Expanded(child: Container(),),
                      TicketContainer(isColor: isColor),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints) {

                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                    width: 3, height: 1,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: isColor==null? Colors.white: Colors.grey.shade300
                                      ),
                                    ),
                                  )),

                                );
                              },

                            ),

                          ),
                          Center(child: Transform.rotate(angle: 1.57, child: Icon(Icons.local_airport_rounded, color: isColor==null? Colors.white: Color(0xFF8accf7),),)),
                        ],

                      )),

                      TicketContainer(isColor: isColor),
                      Expanded(child: Container(),),
                      Text(ticket['to']['code'],
                        style: isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white): Styles.headlineStyle3,),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(ticket['from']['name'], style: isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white): Styles.headlineStyle4,),
                      ),
                      Text(ticket['flying_time'], style: isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white): Styles.headlineStyle4,),
                      SizedBox(
                        width: 100,
                        child: Text(ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white): Styles.headlineStyle4,),
                      ),
                    ],
                  )
                ],
              ),
            ),
            
            // Showing red part of ticket
            Container(
              color: isColor==null? Styles.orangeColor: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor==null? Colors.white: Colors.grey.shade300,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppLayoutBuilderWidget(isColor: isColor, section: 15,)
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor==null? Colors.white: Colors.grey.shade300,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),

            // Bottom orange part
            Container(
              decoration: BoxDecoration(
                color: isColor==null? Styles.orangeColor: Colors.white,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)
                ),
              ),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticket['date'],
                            style: isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white): Styles.headlineStyle3,
                          ),
                          const SizedBox(height: 5,),
                          Text('DATE',
                            style: isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white): Styles.headlineStyle4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['destination_time'],
                            style: isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white): Styles.headlineStyle3,
                          ),
                          const SizedBox(height: 5,),
                          Text('Departure time',
                            style: isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white): Styles.headlineStyle4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket['number'].toString(),
                            style: isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white): Styles.headlineStyle3,
                          ),
                          const SizedBox(height: 5,),
                          Text('November',
                            style: isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white): Styles.headlineStyle4,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
