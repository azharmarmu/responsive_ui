import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui/constants/app_color.dart';

import 'my_files.dart';

class FileCard extends StatelessWidget {
  final FileCardModel file;

  const FileCard({Key? key, required this.file}) : super(key: key);

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
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(file.icon),
              Icon(Icons.more_vert),
            ],
          ),
          Text(
            file.name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          PercentageWidget(
            percentage: file.percentage,
            percentageColor: file.percentageColor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${file.fileCount} Files',
                style: TextStyle(
                  color: Colors.white60,
                ),
              ),
              Text(
                '${file.fileSpace}GB',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PercentageWidget extends StatelessWidget {
  final double percentage;
  final Color percentageColor;

  const PercentageWidget({
    Key? key,
    required this.percentage,
    required this.percentageColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LayoutBuilder(
          builder: (_, constraints) {
            return Container(
              width: constraints.maxWidth,
              height: AppConstants.defaultPadding * 0.2,
              decoration: BoxDecoration(
                color: percentageColor.withOpacity(0.1),
              ),
            );
          },
        ),
        Container(
          width: percentage,
          height: AppConstants.defaultPadding * 0.2,
          decoration: BoxDecoration(
            color: percentageColor,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        )
      ],
    );
  }
}
