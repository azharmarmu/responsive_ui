import 'package:flutter/material.dart';
import 'package:responsive_ui/constants/app_color.dart';

import 'widgets/header.dart';
import 'widgets/storage_details.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            SizedBox(height: AppConstants.defaultPadding),
            Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      color: Colors.red,
                      height: 600,
                    ),
                  ),
                  SizedBox(width: AppConstants.defaultPadding),
                  StorageDetails(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
