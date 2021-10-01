import 'package:client/preferences/enums/icons.dart';
import 'package:client/preferences/enums/images.dart';
import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dims = DevicesDimsConfig(context);
    return SizedBox(
      width: dims.deviceWidth,
      height: dims.deviceHeight * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: dims.deviceHeight * 0.1,
            width: dims.deviceWidth * 0.1,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppIcons.homePageMenuBarIcon.iconAssetName,
                ),
              ),
            ),
          ),
          SizedBox(width: dims.configWidth(8)),
          Container(
            height: dims.deviceHeight * 0.1,
            width: dims.deviceWidth * 0.1,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppIcons.homePageNotificationIcon.iconAssetName,
                ),
              ),
            ),
          ),
          const Spacer(),
          Container(
            width: dims.deviceWidth * 0.5,
            height: dims.deviceHeight * 0.1,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppImages.logoTypo.assetName,
                ),
              ),
            ),
          ),
          const Spacer(),
          SizedBox(width: dims.deviceWidth * 0.1),
          SizedBox(width: dims.configWidth(8)),
          Container(
            height: dims.deviceHeight * 0.1,
            width: dims.deviceWidth * 0.1,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppIcons.homePageCartIcon.iconAssetName,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
