import 'package:flutter/material.dart';
import 'package:responsive_ui/constants/app_assets.dart';
import 'package:responsive_ui/constants/app_strings.dart';

import 'widgets/side_bar_items.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Image.asset(AppAssets.logo)),
          SideBarItem(path: AppAssets.menuDashboard, label: AppStrings.dashboard),
          SideBarItem(path: AppAssets.menuTransaction, label: AppStrings.transaction),
          SideBarItem(path: AppAssets.menuTask, label: AppStrings.task),
          SideBarItem(path: AppAssets.menuDocuments, label: AppStrings.documents),
          SideBarItem(path: AppAssets.menuStore, label: AppStrings.store),
          SideBarItem(path: AppAssets.menuNotification, label: AppStrings.notification),
          SideBarItem(path: AppAssets.menuProfile, label: AppStrings.profile),
          SideBarItem(path: AppAssets.menuSettings, label: AppStrings.settings),
        ],
      ),
    );
  }
}
