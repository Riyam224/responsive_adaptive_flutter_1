// ignore_for_file: prefer_const_constructors
import 'dart:js';

import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  // todo
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      // todo layoutbuilder depends on parent height and  media query depends on screen height
      //   print("media query width =  ${MediaQuery.sizeOf(context).width}");
      // print("LayoutBuilder is ${constraints.maxWidth}");
      if (constraints.maxWidth < 600) {
        return mobileLayout(context);
      } else if (constraints.maxWidth < 900) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
