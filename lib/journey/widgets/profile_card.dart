import 'package:flutter/material.dart';
import 'package:responsive_ui/constants/app_assets.dart';
import 'package:responsive_ui/constants/app_color.dart';

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
        color: secondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Image.asset(profilePic),
          SizedBox(width: AppConstants.defaultPadding / 2),
          Text('Angelina Joli'),
          SizedBox(width: AppConstants.defaultPadding / 2),
          Icon(Icons.keyboard_arrow_down_outlined)
        ],
      ),
    );
  }
}
