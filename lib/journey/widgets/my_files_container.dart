import 'package:flutter/material.dart';
import 'package:responsive_ui/constants/app_color.dart';

import 'my_files.dart';

class MyFileContainer extends StatelessWidget {
  const MyFileContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Column(
        children: [
          MyFilesHeader(),
          SizedBox(height: AppConstants.defaultPadding),
          //MyFilesTable(),
        ],
      ),
    );
  }
}
