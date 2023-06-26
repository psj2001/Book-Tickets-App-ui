import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: List.generate(
                  (constraints.constrainWidth() / 15).floor(),
                  (index) => SizedBox(
                    width: 5,
                    height: 1,
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.black)),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
