import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui/constants/app_color.dart';

class StorageItems extends StatelessWidget {
  final String icon;
  final String title;
  final String subTitle;
  final String storage;

  const StorageItems({
    Key? key,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.storage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      margin: EdgeInsets.only(
        top: AppConstants.defaultPadding,
      ),
      decoration: BoxDecoration(
        color: AppConstants.secondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(
          color: Colors.white60,
        ),
      ),
      child: ListTile(
        leading: SvgPicture.asset(
          icon,
          //color: Colors.blueAccent,
        ),
        title: Text(
          title,
          style: textTheme.bodyText1,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          subTitle,
          style: textTheme.caption?.copyWith(
            fontSize: 12,
            color: Colors.white60,
          ),
          maxLines: 1,
          overflow: TextOverflow.fade,
        ),
        trailing: Text(
          storage,
          style: textTheme.bodyText1?.copyWith(
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
