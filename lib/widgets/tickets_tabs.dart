import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking/utils/app_layout.dart';

class AppTicketTab extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTab({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.all(3.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFF4F6FD),
      ),
      child: Row(
        children: [
          // Airline ticket
          Container(
            padding: const EdgeInsets.symmetric(vertical: 7),
            width: size.width * 0.44,
            decoration: const BoxDecoration(
              borderRadius:
              BorderRadius.horizontal(left: Radius.circular(50)),
              color: Colors.white,
            ),
            child: Center(child: Text(firstTab)),
          ),

          // Hotels
          Container(
            padding: const EdgeInsets.symmetric(vertical: 7),
            width: size.width * 0.44,
            decoration: const BoxDecoration(
              borderRadius:
              BorderRadius.horizontal(right: Radius.circular(50)),
              color: Colors.transparent,
            ),
            child: Center(child: Text(secondTab)),
          )
        ],
      ),
    );
  }
}
