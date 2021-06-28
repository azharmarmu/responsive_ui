import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui/constants/app_assets.dart';
import 'package:responsive_ui/constants/app_color.dart';
import 'package:responsive_ui/constants/app_strings.dart';

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
          MyFilesTable(),
        ],
      ),
    );
  }
}

class MyFilesTable extends StatelessWidget {
  const MyFilesTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppConstants.defaultPadding),
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
            'Recent Files',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(height: AppConstants.defaultPadding/2),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columns: [
                DataColumn(label: Text(AppStrings.fileName)),
                DataColumn(label: Text(AppStrings.date)),
                DataColumn(label: Text(AppStrings.size))
              ],
              rows: List.generate(recentFiles.length, (index) {
                RecentFile recentFile = recentFiles[index];
                return DataRow(
                  cells: [
                    DataCell(
                      Row(
                        children: [
                          SvgPicture.asset(AppAssets.documents),
                          SizedBox(width: AppConstants.defaultPadding),
                          Text(recentFile.title)
                        ],
                      ),
                    ),
                    DataCell(Text(recentFile.date)),
                    DataCell(Text('${recentFile.size}mb')),
                  ],
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}


//Asssuming we get data from APi/Backend
List<RecentFile> recentFiles = [
  RecentFile(
    icon: AppAssets.excleFile,
    title: 'XD File',
    date: '01-03-2021',
    size: 3.5,
  ),
  RecentFile(
    icon: AppAssets.excleFile,
    title: 'Sound File',
    date: '05-04-2021',
    size: 6.5,
  ),
  RecentFile(
    icon: AppAssets.excleFile,
    title: 'Excel File',
    date: '25-02-2021',
    size: 34.5,
  ),
];

class RecentFile {
  final String icon, title, date;
  final num? size;

  const RecentFile({
    required this.icon,
    required this.title,
    required this.date,
    this.size,
  });
}
