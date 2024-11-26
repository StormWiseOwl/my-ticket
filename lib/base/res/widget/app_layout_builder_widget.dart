import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ticket/base/res/Styles/app_styles.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int randomDivider;
  const AppLayoutBuilderWidget({super.key, required this.randomDivider});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutBuilder(builder: (BuildContext context , BoxConstraints constraints){
        print("${constraints.constrainWidth()}");
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction:Axis.horizontal,
          children:
         List.generate((constraints.constrainWidth()/randomDivider).floor()  as int
              ,(index) =>  SizedBox(
                  width: 3,height: 1,
                  child:
                  DecoratedBox(
                      decoration:BoxDecoration(
                       color: appStyle.pureW,
                      ))
                )),
        );
      }),
    );
  }
}
