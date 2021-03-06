import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui/constants/app_assets.dart';
import 'package:responsive_ui/constants/app_color.dart';
import 'package:responsive_ui/constants/app_strings.dart';

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
          SizedBox(height: AppConstants.defaultPadding / 2),
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
                          SvgPicture.asset(
                            recentFile.icon,
                            width: 24,
                            height: 24,
                          ),
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
    icon: AppAssets.xdFile,
    title: 'XD File',
    date: '01-03-2021',
    size: 3.5,
  ),
  RecentFile(
    icon: AppAssets.figmaFile,
    title: 'Figma File',
    date: '05-04-2021',
    size: 6.5,
  ),
  RecentFile(
    icon: AppAssets.docFile,
    title: 'Documents',
    date: '25-02-2021',
    size: 34.5,
  ),
  RecentFile(
    icon: AppAssets.soundFile,
    title: 'Sound File',
    date: '25-02-2021',
    size: 24.5,
  ),
  RecentFile(
    icon: AppAssets.mediaFile,
    title: 'Media File',
    date: '25-01-2021',
    size: 35.5,
  ),
  RecentFile(
    icon: AppAssets.pdfFile,
    title: 'Sales PDF',
    date: '30-03-2021',
    size: 40.5,
  ),
  RecentFile(
    icon: AppAssets.excleFile,
    title: 'Excel File',
    date: '25-05-2021',
    size: 17.5,
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
