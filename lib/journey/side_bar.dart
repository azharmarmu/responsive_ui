import 'package:flutter/material.dart';
import 'package:responsive_ui/constants/app_assets.dart';
import 'package:responsive_ui/constants/app_color.dart';
import 'package:responsive_ui/constants/app_strings.dart';

import 'widgets/side_bar_items.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      color: secondaryColor,
      child: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Image.asset(logo)),
            SideBarItem(path: menuDashboard, label: AppStrings.dashboard),
            SideBarItem(path: menuTransaction, label: 'Transaction'),
            SideBarItem(path: menuTask, label: 'Task'),
            SideBarItem(path: menuDocuments, label: 'Documents'),
            SideBarItem(path: menuStore, label: 'Store'),
            SideBarItem(path: menuNotification, label: 'Notification'),
            SideBarItem(path: menuProfile, label: 'Profile'),
            SideBarItem(path: menuSettings, label: 'Settings'),
          ],
        ),
      ),
    );
  }
}
