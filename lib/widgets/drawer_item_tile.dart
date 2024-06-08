// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storezy/constants/colors.dart';

class DrawerItemTile extends StatelessWidget {
  const DrawerItemTile({
    super.key,
    required this.icon,
    required this.titleText,
    this.onTap,
  });

  final IconData icon;
  final String titleText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,
          // Icons.change_circle_sharp,
          color: Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue),
      title: Text(
        titleText,
        style: TextStyle(
            fontSize: 18.0,
            color: Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue),
      ),
      onTap: () {
        //Task: close the drawer and go to another screen
        if (onTap != null) onTap!();
        Scaffold.of(context).closeDrawer(); //Implemented drawer closing on tap
      },
    );
  }
}
