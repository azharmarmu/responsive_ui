import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'side_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          SideBar(),
          Dashboard()
        ],
      )),
    );
  }
}



