// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project1/views/widgets/custom_item_2.dart';

class CustomSliverListView extends StatelessWidget {
  const CustomSliverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 16),
            child: CustomItem2(),
          );
        });
  }
}
