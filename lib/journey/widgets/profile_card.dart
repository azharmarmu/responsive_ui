import 'package:flutter/material.dart';
import 'package:responsive_ui/constants/app_assets.dart';
import 'package:responsive_ui/constants/app_color.dart';
import 'package:responsive_ui/responsive_layout.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppConstants.defaultPadding / 2,
        horizontal: AppConstants.defaultPadding,
      ),
      decoration: BoxDecoration(
        color: AppConstants.secondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Image.asset(AppAssets.profilePic),
          if (!ResponsiveLayout.isMobile(context))
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppConstants.defaultPadding / 2),
              child: Text('Angelina Joli'),
            ),
          Icon(Icons.keyboard_arrow_down_outlined)
        ],
      ),
    );
  }
}
