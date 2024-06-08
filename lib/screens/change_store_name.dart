// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storezy/constants/constants.dart';
import 'package:storezy/controllers/store_controller.dart';
import 'package:storezy/widgets/rounded_input.dart';

class ChangeStoreNameScreen extends GetWidget<StoreController> {
  const ChangeStoreNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change store name', style: TextStyle(fontSize: 18)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        child: Column(
          children: [
            Text('Enter Store Name', style: TextStyle(fontSize: 16))
                .align(Alignment.centerLeft),
            spacer(y: 6),
            RoundedInput(
              controller: controller.storenameEditingController,
              hintText: 'Store name',
            ),
            spacer(y: 10),
            FilledButton.icon(
                style: ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                    backgroundColor:
                        MaterialStatePropertyAll(colors(context).secondary)),
                onPressed: () {},
                icon: Icon(Icons.save_alt_rounded),
                label: Text(
                  'Save',
                  style: TextStyle(fontSize: 16),
                )).align(Alignment.centerLeft)
          ],
        ),
      ),
    );
  }
}
