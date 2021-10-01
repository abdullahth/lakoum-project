import 'package:client/preferences/theme.dart';
import 'package:client/views/home-page/home_page.dart';
import 'package:dims_config/dims_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'preferences/translations.dart';

void main() {
  initailizeDims(
    debuggingMobileDeviceHeight: 744,
    debuggingMobileDeviceWidth: 500,
    debuggingTabletDeviceHeight: 744,
    debuggingTabletDeviceWidth: 767.2,
    debuggingDesktopDeviceHeight: 753.6,
    debuggingDesktopDeviceWidth: 1536,
  );


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: AppTranslations(),
      locale: const Locale('en'),
      fallbackLocale: const Locale('en'),
      supportedLocales: const [
        Locale('en'),
      ],
      title: 'Lakoum',
      theme: appThemeData,
      home: const HomePage(),
    );
  }
}
