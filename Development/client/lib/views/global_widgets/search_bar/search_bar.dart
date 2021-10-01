import 'package:client/preferences/enums/icons.dart';
import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConstantSearchTextField extends StatelessWidget {
  const ConstantSearchTextField({
    Key? key,
    required this.searchCallback,
  }) : super(key: key);

  final Function(String searchToken) searchCallback;

  @override
  Widget build(BuildContext context) {
    final dims = DevicesDimsConfig(context);
    return ResponsivePadding(
      child: Container(
          height: dims.deviceHeight * 0.06,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(dims.configWidth(10)),
          ),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: 'search'.tr,
                hintStyle: TextStyle(color: Colors.grey.shade700),
                border: InputBorder.none,
                prefixIcon: ResponsivePadding(
                  child: Container(
                    width: dims.deviceWidth * 0.05,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              AppIcons.homePageSearchIcon.iconAssetName)),
                    ),
                  ),
                  padding: SymetricPadding(
                    context: context,
                    horizontal: 2,
                    vertical: 1,
                  ),
                )),
          )),
      padding: SymetricPadding(
        context: context,
        horizontal: 8,
        vertical: 12,
      ),
    );
  }
}
