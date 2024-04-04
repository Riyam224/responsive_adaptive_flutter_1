// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:project1/views/widgets/Desktop_layout.dart';
import 'package:project1/views/widgets/custom_list.dart';
import 'package:project1/views/widgets/custom_list_view.dart';
import 'package:project1/views/widgets/custom_sliver_grid.dart';
import 'package:project1/views/widgets/Mobile_layout.dart';
import 'package:project1/views/widgets/Tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      // todo
      child: LayoutBuilder(builder: (context, constraints) {
        // todo layoutbuilder depends on parent height and  media query depends on screen height
        //   print("media query width =  ${MediaQuery.sizeOf(context).width}");
        // print("LayoutBuilder is ${constraints.maxWidth}");
        if (constraints.maxWidth < 600) {
          return MobileLayout();
        } else if (constraints.maxWidth < 900) {
          return TabletLayout();
        } else {
          return DesktopLayout();
        }
      }),
    );
  }
}
