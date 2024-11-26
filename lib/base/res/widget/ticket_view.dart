import 'package:flutter/material.dart';
import 'package:ticket/base/res/widget/tow_dot.dart';

import '../Styles/app_styles.dart';
import 'app_layout_builder_widget.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 179,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: appStyle.blueTickect,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21), topRight: Radius.circular(21))),

                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("NYC",
                            style: appStyle.headlineStyle2.copyWith(
                                color: appStyle.pureW,
                                fontWeight: FontWeight.w400,
                                fontSize: 18)),
                        Expanded(child: Container()),
                        TowDot(),
                        Expanded(
                            child: Stack(children: [
                          Center(
                              child: Transform.rotate(
                                  angle: 1.57,
                                  child: Icon(Icons.local_airport_rounded, color: appStyle.pureW,))),
                          const SizedBox(
                            height: 22,
                            child: AppLayoutBuilderWidget(randomDivider: 6),
                          )
                        ])),
                        TowDot(),
                        Expanded(child: Container()),
                        Text("LDN",
                            style: appStyle.headlineStyle2.copyWith(
                                color: appStyle.pureW,
                                fontWeight: FontWeight.w400,
                                fontSize: 18))
                      ],
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        Text("New_york",
                            style: appStyle.headlineStyle2.copyWith(
                                color: appStyle.pureW,
                                fontWeight: FontWeight.w400,
                                fontSize: 16)),
                        Expanded(child:  Container(),),
                        Text("8H 30MIN",
                            style: appStyle.headlineStyle2.copyWith(
                                color: appStyle.pureW,
                                fontWeight: FontWeight.w400,
                                fontSize: 16)),
                       Expanded(child: Container()),
                       Text("London",
                            style: appStyle.headlineStyle2.copyWith(
                                color: appStyle.pureW,
                                fontWeight: FontWeight.w400,
                                fontSize: 16))
                      ],
                    )
                  ],
                ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: appStyle.blueTickect,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21), topRight: Radius.circular(21))),

              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC",
                          style: appStyle.headlineStyle2.copyWith(
                              color: appStyle.pureW,
                              fontWeight: FontWeight.w400,
                              fontSize: 18)),
                      Expanded(child: Container()),
                      TowDot(),
                      Expanded(
                          child: Stack(children: [
                            Center(
                                child: Transform.rotate(
                                    angle: 1.57,
                                    child: Icon(Icons.local_airport_rounded, color: appStyle.pureW,))),
                            const SizedBox(
                              height: 22,
                              child: AppLayoutBuilderWidget(randomDivider: 6),
                            )
                          ])),
                      TowDot(),
                      Expanded(child: Container()),
                      Text("LDN",
                          style: appStyle.headlineStyle2.copyWith(
                              color: appStyle.pureW,
                              fontWeight: FontWeight.w400,
                              fontSize: 18))
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text("New_york",
                          style: appStyle.headlineStyle2.copyWith(
                              color: appStyle.pureW,
                              fontWeight: FontWeight.w400,
                              fontSize: 16)),
                      Expanded(child:  Container(),),
                      Text("8H 30MIN",
                          style: appStyle.headlineStyle2.copyWith(
                              color: appStyle.pureW,
                              fontWeight: FontWeight.w400,
                              fontSize: 16)),
                      Expanded(child: Container()),
                      Text("London",
                          style: appStyle.headlineStyle2.copyWith(
                              color: appStyle.pureW,
                              fontWeight: FontWeight.w400,
                              fontSize: 16))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
