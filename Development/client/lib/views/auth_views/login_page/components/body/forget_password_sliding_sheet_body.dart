import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:get/get.dart';

class ForgetPasswordSlidingSheetBody extends StatefulWidget {
  const ForgetPasswordSlidingSheetBody({Key? key}) : super(key: key);

  @override
  _ForgetPasswordSlidingSheetBodyState createState() =>
      _ForgetPasswordSlidingSheetBodyState();
}

class _ForgetPasswordSlidingSheetBodyState
    extends State<ForgetPasswordSlidingSheetBody> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dims = DevicesDimsConfig(context);
    return SizedBox(
      height: dims.deviceHeight * 0.45,
      width: dims.deviceWidth,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: theme.colorScheme.secondary.withOpacity(0.2),
                    width: dims.configWidth(2))),
            width: dims.deviceWidth,
            height: dims.deviceHeight * 0.09,
            child: ResponsivePadding(
              padding: SymetricPadding(context: context, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: AutoSizeText(
                      'forget_password'.tr,
                      style: TextStyle(
                        color: theme.primaryColor,
                        fontSize: 24,
                      ),
                      maxFontSize: 32,
                      minFontSize: 16,
                    ),
                  ),
                  const Spacer(),
                  Material(
                    color: Colors.transparent,
                    child: IconButton(
                      icon: Icon(
                        Icons.close,
                        color: theme.primaryColor,
                        size: dims.configWidth(32),
                      ),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Material(
            color: Colors.transparent,
            child: ResponsivePadding(
              padding: SymetricPadding(
                context: context,
                horizontal: 12,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  AutoSizeText(
                    'reset_your_password'.tr,
                    style: TextStyle(
                      color: theme.colorScheme.secondary,
                      fontSize: 18,
                    ),
                    maxFontSize: 24,
                    textAlign: TextAlign.start,
                    minFontSize: 14,
                    maxLines: 1,
                  ),
                  const Spacer(),
                  AutoSizeText(
                    'reset_password_msg'.tr,
                    style: TextStyle(
                      color: theme.colorScheme.secondary,
                      fontSize: 16,
                    ),
                    maxFontSize: 20,
                    textAlign: TextAlign.start,
                    minFontSize: 12,
                    maxLines: 2,
                  ),
                  const Spacer(),
                  SizedBox(
                    height: dims.deviceHeight * 0.08,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: theme.colorScheme.secondaryVariant,
                            width: dims.configWidth(1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: theme.colorScheme.secondaryVariant,
                            width: dims.configWidth(1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: double.infinity,
                    height: dims.deviceHeight * 0.05,
                    color: theme.colorScheme.primaryVariant,
                    child: TextButton(
                      onPressed: () {
                        // TODO
                      },
                      child: Material(
                        color: theme.colorScheme.primaryVariant,
                        child: AutoSizeText(
                          'reset_password'.tr,
                          maxFontSize: 24,
                          minFontSize: 12,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
