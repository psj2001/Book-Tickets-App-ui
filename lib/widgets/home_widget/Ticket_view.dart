// ignore_for_file: prefer_const_constructors

import 'package:book_tickets/utils/app_info.dart';
import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_style.dart';
import 'package:book_tickets/widgets/home_widget/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Ticketview extends StatelessWidget {
  const Ticketview({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return ListView.builder(
        itemCount: ticketList.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return SizedBox(
            width: size.width * 0.85,
            height: AppLayout.getHeight(200),
            child: Container(
              margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF526799),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getHeight(21)),
                          topRight: Radius.circular(AppLayout.getHeight(21))),
                    ),
                    padding: EdgeInsets.all(AppLayout.getHeight(16)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "${ticketList[index]["from"]["code"]}",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white),
                            ),
                            Expanded(child: Container()),
                            ThickContainer(),
                            Expanded(
                              child: Stack(children: [
                                SizedBox(
                                  height: AppLayout.getHeight(24),
                                  child: LayoutBuilder(
                                    builder: (BuildContext context,
                                        BoxConstraints constraints) {
                                      print(
                                          "The width is ${constraints.constrainWidth()}");
                                      return Flex(
                                        direction: Axis.horizontal,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(
                                            (constraints.constrainWidth() / 6)
                                                .floor(),
                                            (index) => SizedBox(
                                                  width: 3,
                                                  height: 1,
                                                  child: DecoratedBox(
                                                      decoration: BoxDecoration(
                                                          color: Colors.white)),
                                                )),
                                      );
                                    },
                                  ),
                                ),
                                Center(
                                  child: Transform.rotate(
                                    angle: 1.5,
                                    child: Icon(
                                      Icons.local_airport_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            ThickContainer(),
                            Expanded(child: Container()),
                            Text(
                              "${ticketList[index]["to"]["code"]} ",
                              style: Styles.headLineStyle3.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Gap(3),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: AppLayout.getwidth(90),
                              child: Text(
                                "${ticketList[index]["from"]["name"]}",
                                style: Styles.headLineStyle4
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                            Text(
                              "${ticketList[index]["flying_time"]}",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white),
                            ),
                            SizedBox(
                              width: AppLayout.getwidth(100),
                              child: Text(
                                "${ticketList[index]["to"]["name"]}",
                                textAlign: TextAlign.end,
                                style: Styles.headLineStyle4.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Styles.orangeColor,
                    child: Row(
                      children: [
                        SizedBox(
                          height: AppLayout.getHeight(20),
                          width: AppLayout.getwidth(10),
                          child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10)))),
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    (constraints.constrainWidth() / 15).floor(),
                                    (index) => SizedBox(
                                          width: 5,
                                          height: 1,
                                          child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: Colors.white)),
                                        )),
                              );
                            },
                          ),
                        )),
                        SizedBox(
                          height: 20,
                          width: 10,
                          child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)))),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Styles.orangeColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(21),
                          bottomRight: Radius.circular(21)),
                    ),
                    padding: EdgeInsets.only(
                        left: 16, top: 10, right: 16, bottom: 16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${ticketList[index]["date"]}",
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.white),
                                ),
                                Gap(5),
                                Text(
                                  'Date',
                                  style: Styles.headLineStyle4
                                      .copyWith(color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "${ticketList[index]["departure_time"]}",
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.white),
                                ),
                                Gap(5),
                                Text(
                                  'Departure time  ',
                                  style: Styles.headLineStyle4
                                      .copyWith(color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "${ticketList[index]["number"]}",
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.white),
                                ),
                                Gap(5),
                                Text(
                                  'Number ',
                                  style: Styles.headLineStyle4
                                      .copyWith(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
