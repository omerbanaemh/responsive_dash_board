import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class InactiveDrawerItem extends StatelessWidget {
  const InactiveDrawerItem({super.key, required this.drawerItemModel});
final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(drawerItemModel.title,
      style: AppStyles.styleMedium16(context),),
    );
  }
}