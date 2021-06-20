import 'package:flutter/material.dart';
import 'package:responsive_ui/constants/app_color.dart';

import 'widgets/header.dart';

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
                  Container(
                    color: Colors.red,
                    height: 600,
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  SizedBox(width: AppConstants.defaultPadding),
                  Container(
                    color: Colors.blue,
                    height: 600,
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
