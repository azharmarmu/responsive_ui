import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui/constants/app_assets.dart';
import 'package:responsive_ui/constants/app_color.dart';
import 'package:responsive_ui/constants/app_strings.dart';

import 'storage_items.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: AppConstants.defaultPadding,
          horizontal: AppConstants.defaultPadding,
        ),
        decoration: BoxDecoration(
          color: AppConstants.secondaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.storageDetails,
              style: TextStyle(
                fontSize: AppConstants.defaultPadding * 1.25,
              ),
            ),
            SizedBox(height: AppConstants.defaultPadding),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: PieChart(
                PieChartData(
                  sections: [
                    PieChartSectionData(
                      showTitle: false,
                      color: Colors.green,
                      radius: 30,
                    ),
                    PieChartSectionData(
                      showTitle: false,
                      color: Colors.red,
                      radius: 25,
                    ),
                    PieChartSectionData(
                      showTitle: false,
                      color: Colors.blueAccent,
                      radius: 25,
                    ),
                    PieChartSectionData(
                      showTitle: false,
                      color: Colors.yellow,
                      radius: 22,
                    ),
                    PieChartSectionData(
                      showTitle: false,
                      color: Colors.white10,
                      radius: 20,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: AppConstants.defaultPadding),
            StorageItems(
              icon: AppAssets.documents,
              title: 'Documents',
              subTitle: '1328 files',
              storage: '135GB',
            ),
            StorageItems(
              icon: AppAssets.googleDrive,
              title: 'Google Drive',
              subTitle: '1328 files',
              storage: '135GB',
            ),
            StorageItems(
              icon: AppAssets.oneDrive,
              title: 'One Drive',
              subTitle: '1328 files',
              storage: '135GB',
            ),
            StorageItems(
              icon: AppAssets.media,
              title: 'Unknown',
              subTitle: '1328 files',
              storage: '135GB',
            ),
          ],
        ),
      ),
    );
  }
}
