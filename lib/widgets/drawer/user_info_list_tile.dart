import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/user_info_list_tile_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  final UserInfoListTileModel userInfoListTileModel;
  const UserInfoListTile({super.key, required this.userInfoListTileModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(userInfoListTileModel.image),
        title: Text(
          userInfoListTileModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          userInfoListTileModel.subTitle,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
