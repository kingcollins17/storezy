// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:storezy/constants/constants.dart';
import '../widgets/rounded_input.dart';

class IncrementFollowersScreen extends StatelessWidget {
  const IncrementFollowersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'Increment followers',
          style: TextStyle(fontSize: 18),
        )),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              spacer(y: 15),
              RoundedInput(hintText: 'Field 1'),
              spacer(),
              RoundedInput(hintText: 'Field 2'),
              spacer(),
              RoundedInput(hintText: 'Field 3'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ));
  }
}
