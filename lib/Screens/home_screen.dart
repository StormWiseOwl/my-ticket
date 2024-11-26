import 'package:fluentui_icons/fluentui_icons.dart' show FluentSystemIcons;
import 'package:flutter/cupertino.dart' show BorderRadius, BoxDecoration, BuildContext, Column, Container, CrossAxisAlignment, EdgeInsets, Icon, ListView, MainAxisAlignment, Row, SizedBox, StatelessWidget, Text, Widget;
import 'package:flutter/material.dart';
import 'package:ticket/base/res/widget/ticket_view.dart';
import '../base/res/Styles/app_styles.dart';
import '../base/res/widget/tow_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:appStyle.bgColor , // Set the background color
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: appStyle.headLineStyle3,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Book Ticket",
                          style: appStyle.headLineStyle1,
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 53,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: appStyle.pureW, // 0xFFFFFFFF pure white
                  ),
                  child: Row(children: [
                    Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: appStyle.searchIcon,
                    ),
                    const Text('search'),
                  ]),
                ),
                const SizedBox(height: 40,),
                const TowTextWidget(bigtxt: 'Upcoming Flight', lowtxt: 'view all'),
                const SizedBox(height: 20),
                TicketView()

              ],
            ),
          ),
        ],
      ),
    );
  }
}
