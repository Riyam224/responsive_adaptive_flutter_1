import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project1/views/widgets/custom_item.dart';
import 'package:project1/views/widgets/custom_item_2.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(flex: 2, child: CustomItem()),
        SizedBox(
          height: 16,
        ),
        Expanded(
          child: CustomItem2(),
        ),
      ],
    );
  }
}
