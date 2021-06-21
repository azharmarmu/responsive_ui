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
              icon: Icon(Icons.add),
              onPressed: () {},
              label: Text('Add New'),
            )
          ],
        ),
        SizedBox(height: AppConstants.defaultPadding),
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: AppConstants.defaultPadding,
              mainAxisSpacing: AppConstants.defaultPadding,
            ),
            itemCount: myFiles.length,
            itemBuilder: (_, index) {
              return FileCard(file: myFiles[index]);
            },
          ),
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
    icon: AppAssets.documents,
    name: AppStrings.documents,
    percentage: 30,
    percentageColor: Colors.blue,
    fileCount: 1320,
    fileSpace: 1.25,
  ),
  FileCardModel(
    icon: AppAssets.documents,
    name: AppStrings.documents,
    percentage: 30,
    percentageColor: Colors.red,
    fileCount: 1320,
    fileSpace: 1.25,
  ),
  FileCardModel(
    icon: AppAssets.documents,
    name: AppStrings.documents,
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
