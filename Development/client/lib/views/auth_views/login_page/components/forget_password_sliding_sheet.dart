import 'package:dims_config/dims_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'body/forget_password_sliding_sheet_body.dart';

forgetPasswordSlidingSheet(BuildContext context) {
  final dims = DevicesDimsConfig(context);
  showSlidingBottomSheet(
    context,
    builder: (_) => SlidingSheetDialog(
      builder: (context, state) {
        return const ForgetPasswordSlidingSheetBody();
      },
      cornerRadius: dims.configWidth(25),
      snapSpec: const SnapSpec(
        snappings: [0, 0.45],
        initialSnap: 0.45,
      ),
    ),
  );
}
