// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storezy/constants/constants.dart';
import 'package:storezy/controllers/store_controller.dart';

class ToggleStoreStatusScreen extends GetWidget<StoreController> {
  const ToggleStoreStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Toggle status',
        style: TextStyle(fontSize: 18),
      )),
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              // Text('Toggle status'),
              // spacer(y: 20),

              spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Is the Store open? - ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  // spacer(x: 10),
                  ObxValue((status) {
                    return Switch.adaptive(
                      value: status.value,
                      onChanged: (value) {},
                    );
                  }, controller.storeStatus),
                ],
              )
            ],
          )),
    );
  }
}
