import 'package:book_tickets/widgets/search_widgets/ticket_tab.dart';
import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../widgets/search_widgets/double_text_widget.dart';
import '../../widgets/search_widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(25)),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle1
                .copyWith(fontSize: AppLayout.getwidth(40)),
          ),
          Gap(AppLayout.getwidth(15)),
          AppTicketTabs(
            firstTab: 'Airline tickets',
            SecondTab: 'Hotels ',
          ),
          Gap(AppLayout.getHeight(25)),
          icon_text(text: 'Departure', icon: Icons.flight_takeoff_rounded),
          Gap(AppLayout.getHeight(20)),
          icon_text(text: 'Arival', icon: Icons.flight_land_rounded),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getwidth(18),
                horizontal: AppLayout.getwidth(15)),
            decoration: BoxDecoration(
                color: Color(0xD91130CE),
                borderRadius: BorderRadius.circular(
                  AppLayout.getwidth(10),
                )),
            child: Center(
              child: Text(
                "Find Tickets",
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          AppDoubleTextWidget(
            bigText: 'Upcomming flights',
            smallText: 'View all',
          ),
          Gap(AppLayout.getHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(15),
                  vertical: AppLayout.getwidth(15),
                ),
                height: AppLayout.getHeight(425),
                width: size.width * 0.42,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(20)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://i.pinimg.com/originals/ec/05/db/ec05dbb5deb17a06d30ee83f7b98d3f5.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      '20% discount on the early booking of this flight. Dont miss ',
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(205),
                        decoration: BoxDecoration(
                          color: Color(0xFF3Ab8B8),
                          borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(18),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getHeight(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              "Take he Survey about our services and get discount",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: Color(0xFF189999)),
                              color: Colors.transparent),
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getwidth(15)),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18)),
                        color: Color(0xFFEC6545)),
                    child: Column(
                      children: [
                        Text(
                          'Take Love',
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(15)),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(text: '🥰', style: TextStyle(fontSize: 28)),
                          TextSpan(text: '😍', style: TextStyle(fontSize: 50)),
                          TextSpan(text: '😘', style: TextStyle(fontSize: 28))
                        ]))
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
