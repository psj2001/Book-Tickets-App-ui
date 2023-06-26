import 'package:flutter/material.dart';
import '../../utils/app_layout.dart';
import '../../utils/app_style.dart';
import '../home_widget/thick_container.dart';
import 'line.dart';

class ticketCard extends StatelessWidget {
  const ticketCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppLayout.getHeight(500),
      width: AppLayout.getwidth(350),
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            height: AppLayout.getHeight(30),
            width: double.infinity,
          ),
          Expanded(
              child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(20),
                      vertical: AppLayout.getHeight(20)),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "NYC",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                          ),
                          Text(
                            "New york",
                            style: Styles.headLineStyle3,
                          )
                        ],
                      ),
                      Expanded(child: Container()),
                      ThickContainer1(),
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
                                                    color: Colors.blue)),
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
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ]),
                      ),
                      ThickContainer1(),
                      Expanded(child: Container()),
                      Column(
                        children: [
                          Text(
                            "LDN",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                          ),
                          Text(
                            "London",
                            style: Styles.headLineStyle3,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Line(),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "1 May ",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                          ),
                          Text(
                            "Date",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "08:00 AM ",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                          ),
                          Text(
                            "Departure Time",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "23 ",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                          ),
                          Text(
                            "Number",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Line(),
                Text(
                  "For more information scan the QR code",
                  style: Styles.headLineStyle3,
                ),
                Image.network(
                  'https://www.pngmart.com/files/10/Qr-Code-Transparent-PNG.png',
                  height: AppLayout.getHeight(210),
                )
              ],
            ),
          )),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            height: AppLayout.getHeight(30),
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
