import 'package:book_tickets/utils/app_info.dart';
import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: hotelList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            width: size.width * 0.6,
            height: AppLayout.getHeight(40),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
            margin: EdgeInsets.only(left: 10, top: 5),
            decoration: BoxDecoration(
                color: Styles.primaryColor,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 2,
                      spreadRadius: 5)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: AppLayout.getHeight(200),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Styles.primaryColor,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("${hotelList[index]["image"]}"))),
                ),
                Gap(10),
                Text(
                  "${hotelList[index]["place"]}",
                  style:
                      Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
                ),
                Gap(10),
                Text(
                  "${hotelList[index]["destination"]}",
                  style: Styles.headLineStyle3.copyWith(color: Colors.white),
                ),
                Gap(8),
                Text(
                  "\$ ${hotelList[index]["price"]}",
                  style:
                      Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
                ),
              ],
            ),
          );
        });
  }
}
