import 'package:flutter/material.dart';
import 'package:responsive_ui/constants/app_assets.dart';
import 'package:responsive_ui/constants/app_color.dart';
import 'package:responsive_ui/constants/app_strings.dart';

import 'file_card.dart';

class MyFilesHeader extends StatelessWidget {
  const MyFilesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('My Files'),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.defaultPadding * 1.5,
                  vertical: AppConstants.defaultPadding,
                ),
              ),
              icon: Icon(Icons.add),
              onPressed: () {},
              label: Text('Add New'),
            )
          ],
        ),
        SizedBox(height: AppConstants.defaultPadding),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: AppConstants.defaultPadding,
            mainAxisSpacing: AppConstants.defaultPadding,
            childAspectRatio: 1,
          ),
          itemCount: myFiles.length,
          itemBuilder: (_, index) {
            return FileCard(file: myFiles[index]);
          },
        ),
      ],
    );
  }
}

List<FileCardModel> myFiles = [
  FileCardModel(
    icon: AppAssets.documents,
    name: AppStrings.documents,
    percentage: 30,
    percentageColor: Colors.orange,
    fileCount: 1320,
    fileSpace: 1.25,
  ),
  FileCardModel(
    icon: AppAssets.googleDrive,
    name: AppStrings.googleDrive,
    percentage: 30,
    percentageColor: Colors.blue,
    fileCount: 1320,
    fileSpace: 1.25,
  ),
  FileCardModel(
    icon: AppAssets.oneDrive,
    name: AppStrings.oneDrive,
    percentage: 30,
    percentageColor: Colors.red,
    fileCount: 1320,
    fileSpace: 1.25,
  ),
  FileCardModel(
    icon: AppAssets.dropBox,
    name: AppStrings.dropBox,
    percentage: 30,
    percentageColor: Colors.brown,
    fileCount: 1320,
    fileSpace: 1.25,
  )
];

class FileCardModel {
  final String icon;
  final String name;
  final double percentage;
  final Color percentageColor;
  final int fileCount;
  final double fileSpace;

  const FileCardModel({
    required this.icon,
    required this.name,
    required this.percentage,
    required this.percentageColor,
    required this.fileCount,
    required this.fileSpace,
  });
}
