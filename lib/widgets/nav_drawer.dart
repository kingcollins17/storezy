// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storezy/constants/colors.dart';
import 'package:storezy/screens/add_reviews.dart';

import '../screens/screens.dart';
import 'drawer_item_tile.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Center(
            child: Text(
              'Storezy',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
          )),
          DrawerItemTile(
            titleText: 'Change store name',
            icon: Icons.change_circle_sharp,
            onTap: () => Get.to(ChangeStoreNameScreen()),
          ),
          DrawerItemTile(
              icon: Icons.add_reaction_sharp,
              titleText: 'Add followers',
              onTap: () => Get.to(AddFollowersScreen())),
          DrawerItemTile(
            icon: Icons.add_task_sharp,
            titleText: 'Increment followers',
            onTap: () => Get.to(IncrementFollowersScreen()),
          ),
          DrawerItemTile(
            icon: Icons.toggle_on_sharp,
            titleText: 'Toggle Store status',
            onTap: () => Get.to(ToggleStoreStatusScreen()),
          ),
          DrawerItemTile(
            icon: Icons.add_comment_sharp,
            titleText: 'Add Reviews',
            onTap: () => Get.to(AddReviewsScreen()),
          ),

          //NOTE: This is the old code
          // ListTile(
          //   leading: Icon(Icons.add_reaction_sharp,
          //       color: Get.isDarkMode
          //           ? AppColors.spaceCadet
          //           : AppColors.spaceBlue),
          //   title: Text(
          //     'Add followers',
          //     style: TextStyle(
          //         fontSize: 18.0,
          //         color: Get.isDarkMode
          //             ? AppColors.spaceCadet
          //             : AppColors.spaceBlue),
          //   ),
          //   onTap: () {
          //     //close the drawer and go to another screen
          //   },
          // ),
          // ListTile(
          //   leading: Icon(Icons.add_task_sharp,
          //       color: Get.isDarkMode
          //           ? AppColors.spaceCadet
          //           : AppColors.spaceBlue),
          //   title: Text(
          //     'Increment Followers',
          //     style: TextStyle(
          //         fontSize: 18.0,
          //         color: Get.isDarkMode
          //             ? AppColors.spaceCadet
          //             : AppColors.spaceBlue),
          //   ),
          //   onTap: () {
          //     //close the drawer and go to another screen
          //   },
          // ),
          // ListTile(
          //   leading: Icon(Icons.toggle_on_sharp,
          //       color: Get.isDarkMode
          //           ? AppColors.spaceCadet
          //           : AppColors.spaceBlue),
          //   title: Text(
          //     'Toggle Store Status',
          //     style: TextStyle(
          //         fontSize: 18.0,
          //         color: Get.isDarkMode
          //             ? AppColors.spaceCadet
          //             : AppColors.spaceBlue),
          //   ),
          //   onTap: () {
          //     //close the drawer and go to another screen
          //   },
          // ),
          // ListTile(
          //   leading: Icon(Icons.add_comment_sharp,
          //       color: Get.isDarkMode
          //           ? AppColors.spaceCadet
          //           : AppColors.spaceBlue),
          //   title: Text(
          //     'Add Reviews',
          //     style: TextStyle(
          //         fontSize: 18.0,
          //         color: Get.isDarkMode
          //             ? AppColors.spaceCadet
          //             : AppColors.spaceBlue),
          //   ),
          //   onTap: () {
          //     //close the drawer and go to another screen
          //   },
          // ),
        ],
      ),
    );
  }
}
