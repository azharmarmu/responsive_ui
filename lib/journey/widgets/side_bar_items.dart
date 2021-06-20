import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideBarItem extends StatelessWidget {
  final String path;
  final String label;

  const SideBarItem({
    Key? key,
    required this.path,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color = Colors.white60;
    return ListTile(
      leading: SizedBox(
        width: 20,
        height: 20,
        child: SvgPicture.asset(
          path,
          color: color,
        ),
      ),
      title: Text(
        label,
        style: TextStyle(
          color: color,
        ),
      ),
    );
  }
}