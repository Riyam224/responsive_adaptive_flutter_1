import 'package:flutter/material.dart';
import 'package:project1/model/drawer_item_model.dart';
import 'package:project1/views/widgets/custom_drawer_item.dart';

class CustomDrawerItemListView extends StatelessWidget {
  const CustomDrawerItemListView({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return CustomDrawerItem(drawerItemModel: items[index]);
        });
  }
}
