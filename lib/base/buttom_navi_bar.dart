import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket/base/res/Styles/app_styles.dart';
import '../Screens/home_screen.dart';
import '../Screens/search_screen.dart';

class ButtomNaviBar extends StatefulWidget {
  const ButtomNaviBar({super.key});

  @override
  State<ButtomNaviBar> createState() => _ButtomNaviBarState();
}

class _ButtomNaviBarState extends State<ButtomNaviBar> {
  final _bodyPage = [
    const HomeScreen(),
    const SearchScreen(),
    const Text("Ticket"),
    const Text("Profile"),];

  int bodyPage = 0;

  void _tap_on(int index) => setState(() {
        bodyPage = index;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: _bodyPage[bodyPage]),
        // Set the background  color 0xFFF9F9F9
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.grey,
            onTap: _tap_on,
            currentIndex: bodyPage,
            selectedItemColor: Colors.blueGrey,
            unselectedItemColor: const Color(0xFF00FF00),
            showSelectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                  label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                  label: "search"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                  label: "Ticket"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                  label: "Settings"),
            ]));
  }
}
