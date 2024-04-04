import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    this.color,
  });

  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // todo
        color: color ?? const Color.fromARGB(255, 99, 98, 94),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
