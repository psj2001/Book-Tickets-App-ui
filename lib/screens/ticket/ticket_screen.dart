import 'package:book_tickets/utils/app_style.dart';
import 'package:book_tickets/widgets/Ticket_widget/line.dart';
import 'package:book_tickets/widgets/search_widgets/ticket_tab.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/app_layout.dart';
import '../../widgets/Ticket_widget/ticketcard.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Column(
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 10),
                child: Text(
                  "Tickets",
                  style: Styles.headLineStyle1.copyWith(fontSize: 38),
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTicketTabs(firstTab: 'Upcommiing', SecondTab: 'Previous'),
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ticketCard(),
          )
        ],
      ),
    );
  }
}
