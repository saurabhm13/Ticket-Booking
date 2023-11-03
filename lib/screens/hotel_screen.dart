import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: 380,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: EdgeInsets.only(right: 17, top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/${hotel['image']}"
                )
              )
            ),
          ),
          SizedBox(height: 7,),
          Text(hotel['place'],
          style: Styles.headlineStyle2.copyWith(color: Styles.kakiColor),
          ),
          SizedBox(height: 2,),
          Text(hotel['destination'],
            style: Styles.headlineStyle2.copyWith(color: Colors.white),
          ),
          SizedBox(height: 3,),
          Text('\$${hotel['price']}/night',
            style: Styles.headlineStyle1.copyWith(color: Styles.kakiColor),
          )
        ],
      ),
    );
  }
}
