// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storezy/constants/constants.dart';
import 'package:storezy/controllers/store_controller.dart';
import 'package:storezy/widgets/rounded_input.dart';

class AddFollowersScreen extends GetWidget<StoreController> {
  const AddFollowersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var bodyText = TextStyle(fontSize: 16);
    return Scaffold(
      appBar: AppBar(
        title: Text('Add followers', style: TextStyle(fontSize: 18)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Text(
              'Follower name',
              style: bodyText,
            ).align(Alignment.centerLeft),
            spacer(),
            RoundedInput(
                hintText: 'name', controller: controller.followerController),
            spacer(),
            FilledButton.icon(
                    style: ButtonStyle(
                        foregroundColor: Colors.white.material,
                        backgroundColor: colors(context).secondary.material),
                    onPressed: () {},
                    icon: Icon(Icons.person_add),
                    label: Text('Add follower', style: bodyText))
                .align(Alignment.centerLeft)
          ],
        ),
      ),
    );
  }
}
