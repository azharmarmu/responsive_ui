import 'package:flutter/material.dart';
import 'package:responsive_ui/constants/app_color.dart';
import 'package:responsive_ui/constants/app_strings.dart';
import 'package:responsive_ui/journey/widgets/search_box.dart';
import 'package:responsive_ui/responsive_layout.dart';

import 'profile_card.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!ResponsiveLayout.isDesktop(context)) ...[
          InkWell(
            onTap: () {},
            child: Icon(Icons.menu),
          ),
          SizedBox(width: AppConstants.defaultPadding / 2),
        ],
        if (!ResponsiveLayout.isMobile(context)) ...[
          Text(
            AppStrings.dashboard,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppConstants.defaultPadding * 1.25,
            ),
          ),
          Spacer(flex: 2),
        ],
        SearchBox(),
        SizedBox(width: AppConstants.defaultPadding),
        ProfileCard()
      ],
    );
  }
}
