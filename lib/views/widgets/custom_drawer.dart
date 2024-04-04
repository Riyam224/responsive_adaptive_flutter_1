// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages, unnecessary_const

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project1/model/drawer_item_model.dart';
import 'package:project1/views/widgets/custom_drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  // todo
  static const List<DrawerItemModel> items = const [
    DrawerItemModel(title: 'D A S G B O A R D', icon: Icons.home),
    DrawerItemModel(title: 'S U T T I N G S', icon: Icons.settings),
    DrawerItemModel(title: 'A B O U T', icon: Icons.info),
    DrawerItemModel(title: 'L O G O U T', icon: Icons.logout),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 234, 228, 207),
      elevation: 0,
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              FontAwesomeIcons.solidHeart,
              size: 56,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          // todo
          CustomDrawerItemListView(items: items)
        ],
      ),
    );
  }
}
