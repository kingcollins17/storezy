// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storezy/constants/constants.dart';
import 'package:storezy/controllers/store_controller.dart';
import 'package:storezy/widgets/rounded_input.dart';

class AddReviewsScreen extends GetWidget<StoreController> {
  const AddReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(fontSize: 16);
    return Scaffold(
      appBar:
          AppBar(title: Text('Add Reviews', style: TextStyle(fontSize: 18))),
      body: _AddReviewBody(),
    );
  }
}

class _AddReviewBody extends StatefulWidget {
  const _AddReviewBody({super.key});

  @override
  State<_AddReviewBody> createState() => _AddReviewBodyState();
}

class _AddReviewBodyState extends State<_AddReviewBody> {
  int currentTab = 0;

  final storeController = Get.find<StoreController>();

  final tabs = ['Add Review', 'View all Reviews'];
  Widget get addReview {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          spacer(y: 15),
          RoundedInput(hintText: 'Field -1'),
          spacer(y: 10),
          RoundedInput(hintText: 'Field -2'),
          spacer(),
          FilledButton.icon(
              style: ButtonStyle(
                  foregroundColor: Colors.white.material,
                  backgroundColor: colors(context).secondary.material),
              onPressed: () {},
              icon: Icon(Icons.reviews),
              label: Text('Add Review', style: TextStyle(fontSize: 16)))
        ],
      ),
    );
  }

  Widget get viewAddedReviews {
    final reviews = storeController.reviews;
    return SliverList.list(children: [
      spacer(y: 40),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Text(
          'Added Reviews',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      ...List.generate(reviews.length, (index) {
        var style = TextStyle(fontSize: 16);
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 6),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                        color: colors(context).secondary,
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.reviews_rounded,
                      size: 18,
                      color: Colors.white,
                    )),
              ),
              spacer(x: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    reviews[index].name,
                    style: style.copyWith(fontWeight: FontWeight.w500),
                  ),
                  // spacer(),
                  Text(reviews[index].review, style: style)
                ],
              ),
            ],
          ),
        );
      })
    ]);
  }

  @override
  Widget build(BuildContext context) {
    // final textStyle = TextStyle(fontSize: 16);
    return CustomScrollView(
      slivers: [SliverToBoxAdapter(child: addReview), viewAddedReviews],
    );
  }
}
