import 'package:flutter/material.dart';
import 'package:responsive_ui/constants/app_color.dart';
import 'package:responsive_ui/responsive_layout.dart';

import 'widgets/header.dart';
import 'widgets/my_files.dart';
import 'widgets/my_files_table.dart';
import 'widgets/storage_details.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppConstants.defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(),
          SizedBox(height: AppConstants.defaultPadding),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyFilesHeader(),
                    SizedBox(height: AppConstants.defaultPadding),
                    MyFilesTable(),
                    if (ResponsiveLayout.isMobile(context)) ...[
                      SizedBox(height: AppConstants.defaultPadding),
                      StorageDetails(),
                    ],
                  ],
                ),
              ),
              if (!ResponsiveLayout.isMobile(context)) ...[
                SizedBox(width: AppConstants.defaultPadding),
                Expanded(
                  flex: 2,
                  child: StorageDetails(),
                ),
              ]
            ],
          ),
        ],
      ),
    );
  }
}
