import 'package:flutter/material.dart';
import 'package:responsive_ui/responsive_layout.dart';
import 'dashboard.dart';
import 'side_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(), //mobile
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (ResponsiveLayout.isDesktop(context))
            Expanded(
              child: SideBar(),
            ),
          Expanded(
            flex: 5,
            child: Dashboard(),
          ),
        ],
      )),
    );
  }
}
