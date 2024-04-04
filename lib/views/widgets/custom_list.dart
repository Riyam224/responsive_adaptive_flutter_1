// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project1/views/widgets/custom_item.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 160,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 16),
              child: AspectRatio(
                aspectRatio: 1,
                child: CustomItem(),
              ),
            );
          },
        ),
      ),
    );
  }
}
