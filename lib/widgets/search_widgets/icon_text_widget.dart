import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/app_layout.dart';
import '../../utils/app_style.dart';

class icon_text extends StatelessWidget {
  final IconData icon;
  final String text;
  icon_text({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getwidth(12), horizontal: AppLayout.getwidth(12)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            AppLayout.getwidth(10),
          )),
      child: Row(
        children: [
          Icon(
            icon,
            color: Color(0xFFBFC2CF),
          ),
          Gap(AppLayout.getwidth(10)),
          Text(
            text,
            style: Styles.textStyle,
          ),
        ],
      ),
    );
  }
}
