// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project1/views/widgets/custom_list_view.dart';
import 'package:project1/views/widgets/custom_sliver_grid.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: SizedBox(
          height: 16,
        )),
        // todo
        CustomSliverGrid(),
        // todo
        CustomSliverListView(),
      ],
    );
  }
}
