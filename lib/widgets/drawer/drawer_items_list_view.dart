import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer/drawer_item.dart';

class DrawerItesListView extends StatelessWidget {
  const DrawerItesListView({
    super.key,
  });

static final List<DrawerItemModel> items = [
  DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
  DrawerItemModel(image: Assets.imagesMyTransctions, title: 'My Transaction'),
  DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
  DrawerItemModel(image: Assets.imagesMyTransctions, title: 'My Transaction'),
  DrawerItemModel(image: Assets.imagesMyTransctions, title: 'My Transaction'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics:  const NeverScrollableScrollPhysics(),
      itemCount:  items.length,
      itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: DrawerItem(drawerItemModel: items[index]),
      );
    },);
  }
}