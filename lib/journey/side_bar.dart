import 'package:flutter/material.dart';
import 'package:responsive_ui/constants/app_assets.dart';
import 'package:responsive_ui/constants/app_color.dart';

import 'widgets/side_bar_items.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      color: secondaryColor,
      child: Column(
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          Divider(color: Colors.white60),
          SideBarItem(path: menuDashboard, label: 'Dashboard'),
          SideBarItem(path: menuTransaction, label: 'Transaction'),
          SideBarItem(path: menuTask, label: 'Task'),
        ],
      ),
    );
  }
}
