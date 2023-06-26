// ignore_for_file: prefer_const_constructors

import 'package:book_tickets/widgets/home_widget/Ticket_view.dart';
import 'package:book_tickets/screens/Home/hotel_screen.dart';
import 'package:book_tickets/utils/app_style.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../widgets/search_widgets/double_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning ',
                          style: Styles.headLineStyle3,
                        ),
                        Gap(5),
                        Text(
                          'Book Tickets',
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://img.freepik.com/premium-vector/book-travel-logo-design-template_145155-1418.jpg?w=2000'),
                            fit: BoxFit.fitHeight,
                          )),
                    )
                  ],
                ),
                Gap(25),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  child: Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205)),
                      Text(
                        'Search',
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                Gap(40),
                AppDoubleTextWidget(
                  bigText: 'Upcomming flights',
                  smallText: 'View all',
                ),
              ],
            ),
          ),
          Gap(15),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              height: 200,
              width: 600,
              child: Ticketview(),
            ),
          ),
          Gap(15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: AppDoubleTextWidget(
              bigText: 'Hotels',
              smallText: 'View all',
            ),
          ),
          Gap(15),
          SizedBox(
            height: 380,
            width: 700,
            child: HotelScreen(),
          ),
        ],
      ),
    );
  }
}
