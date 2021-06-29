import 'package:flutter/material.dart';
import 'package:responsive_ui/constants/app_color.dart';
import 'package:responsive_ui/constants/app_strings.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: AppConstants.defaultPadding / 2,
            ),
            hintText: AppStrings.search,
            fillColor: AppConstants.secondaryColor,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide.none,
            ),
            suffixIcon: Container(
              decoration: BoxDecoration(
                color: AppConstants.primaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              padding: EdgeInsets.all(AppConstants.defaultPadding * 0.05),
              margin: EdgeInsets.all(AppConstants.defaultPadding / 3),
              child: IconButton(
                color: Colors.white,
                iconSize: 20,
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            )),
      ),
    );
  }
}
