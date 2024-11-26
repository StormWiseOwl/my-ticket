import 'package:flutter/material.dart';
import 'package:ticket/base/res/Styles/app_styles.dart';

class TowDot extends StatelessWidget {
  const TowDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const  EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(width: 2.5, color: const Color(0xFF87CEEB)),
        borderRadius: BorderRadius.circular(20),
      )
    );
  }
}
