import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:client/preferences/enums/images.dart';
import 'package:client/preferences/enums/icons.dart';
import 'package:client/views/auth_views/login_page/components/forget_password_sliding_sheet.dart';
import 'package:client/views/auth_views/widgets/text_form_field/text_form_field.dart';
import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileVericationPage extends StatefulWidget {
  const MobileVericationPage({Key? key}) : super(key: key);

  @override
  _MobileVericationPageState createState() => _MobileVericationPageState();
}

class _MobileVericationPageState extends State<MobileVericationPage> {
  final _firstDigitController = TextEditingController();
  final _secondDigitController = TextEditingController();
  final _thirdDigitController = TextEditingController();
  final _fourthDigitController = TextEditingController();

  final _firstDigitFocusNode = FocusNode();
  final _secondDigitFocusNode = FocusNode();
  final _thirdDigitFocusNode = FocusNode();
  final _fourthDigitFocusNode = FocusNode();

  late bool _keepLogIn;

  @override
  void initState() {
    super.initState();
    _keepLogIn = true;
  }

  @override
  Widget build(BuildContext context) {
    final dims = DevicesDimsConfig(context);
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
              width: dims.deviceWidth,
              height: dims.deviceHeight,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    AppImages.loginBgImage.assetName,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                color: Colors.black.withOpacity(0.2),
                child: Container(
                  color: theme.primaryColor.withOpacity(0.1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: dims.deviceHeight * 0.025),
                      SizedBox(
                        width: dims.deviceWidth,
                        height: dims.deviceHeight * 0.15,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    AppImages.logoWhiteColor.assetName),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                      SizedBox(height: dims.deviceHeight * 0.025),
                      Expanded(
                        child: ResponsivePadding(
                          padding: SymetricPadding(
                              context: context,
                              horizontal: dims.deviceWidth * 0.05),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: dims.deviceWidth,
                                height: dims.deviceHeight * 0.1,
                                child: Center(
                                  child: Material(
                                    color: Colors.transparent,
                                    child: AutoSizeText(
                                      'verification'.tr,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 36,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      maxLines: 1,
                                      maxFontSize: 48,
                                      minFontSize: 28,
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              SizedBox(
                                width: double.infinity,
                                height: dims.deviceHeight * 0.5,
                                child: Card(
                                  color: Colors.white.withOpacity(0.2),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const Spacer(),
                                            AutoSizeText(
                                              'mobile_verification_msg'.tr,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                              maxFontSize: 20,
                                              textAlign: TextAlign.center,
                                              minFontSize: 12,
                                              maxLines: 2,
                                            ),
                                            const Spacer(),
                                            SizedBox(
                                              height: dims.deviceHeight * 0.1,
                                              width: dims.deviceWidth * 0.7,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              dims.configWidth(
                                                                  10)),
                                                      color: Colors.white
                                                          .withOpacity(0.3),
                                                      border: Border.all(
                                                        color: theme.colorScheme
                                                            .primaryVariant,
                                                        width: dims.configWidth(
                                                          2,
                                                        ),
                                                      ),
                                                    ),
                                                    height: dims.deviceHeight *
                                                        0.08,
                                                    width: dims.deviceHeight *
                                                        0.08,
                                                    child: Center(
                                                      child: TextFormField(
                                                        controller:
                                                            _firstDigitController,
                                                        focusNode:
                                                            _firstDigitFocusNode,
                                                        onChanged: (v) {
                                                          if (v.length == 1) {
                                                            _secondDigitFocusNode
                                                                .requestFocus();
                                                          }
                                                        },
                                                        decoration:
                                                            const InputDecoration(
                                                          enabledBorder:
                                                              InputBorder.none,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              dims.configWidth(
                                                                  10)),
                                                      color: Colors.white
                                                          .withOpacity(0.3),
                                                      border: Border.all(
                                                        color: theme.colorScheme
                                                            .primaryVariant,
                                                        width: dims.configWidth(
                                                          2,
                                                        ),
                                                      ),
                                                    ),
                                                    height: dims.deviceHeight *
                                                        0.08,
                                                    width: dims.deviceHeight *
                                                        0.08,
                                                    child: Center(
                                                      child: TextFormField(
                                                        controller:
                                                            _secondDigitController,
                                                        focusNode:
                                                            _secondDigitFocusNode,
                                                        onChanged: (v) {
                                                          if (v.length == 1) {
                                                            _thirdDigitFocusNode
                                                                .requestFocus();
                                                          }
                                                        },
                                                        decoration:
                                                            const InputDecoration(
                                                          enabledBorder:
                                                              InputBorder.none,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              dims.configWidth(
                                                                  10)),
                                                      color: Colors.white
                                                          .withOpacity(0.3),
                                                      border: Border.all(
                                                        color: theme.colorScheme
                                                            .primaryVariant,
                                                        width: dims.configWidth(
                                                          2,
                                                        ),
                                                      ),
                                                    ),
                                                    height: dims.deviceHeight *
                                                        0.08,
                                                    width: dims.deviceHeight *
                                                        0.08,
                                                    child: Center(
                                                      child: TextFormField(
                                                        controller:
                                                            _thirdDigitController,
                                                        focusNode:
                                                            _thirdDigitFocusNode,
                                                        onChanged: (v) {
                                                          if (v.length == 1) {
                                                            _fourthDigitFocusNode
                                                                .requestFocus();
                                                          }
                                                        },
                                                        decoration:
                                                            const InputDecoration(
                                                          enabledBorder:
                                                              InputBorder.none,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              dims.configWidth(
                                                                  10)),
                                                      color: Colors.white
                                                          .withOpacity(0.3),
                                                      border: Border.all(
                                                        color: theme.colorScheme
                                                            .primaryVariant,
                                                        width: dims.configWidth(
                                                          2,
                                                        ),
                                                      ),
                                                    ),
                                                    height: dims.deviceHeight *
                                                        0.08,
                                                    width: dims.deviceHeight *
                                                        0.08,
                                                    child: Center(
                                                      child: TextFormField(
                                                        onChanged: (v) {
                                                          if (v.length > 1) {
                                                            setState(() {
                                                              _fourthDigitController
                                                                      .text =
                                                                  _fourthDigitController
                                                                      .text
                                                                      .substring(
                                                                          0, 1);
                                                            });
                                                          }
                                                        },
                                                        controller:
                                                            _fourthDigitController,
                                                        focusNode:
                                                            _fourthDigitFocusNode,
                                                        decoration:
                                                            const InputDecoration(
                                                          enabledBorder:
                                                              InputBorder.none,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            const Spacer(),
                                          ],
                                        ),
                                        flex: 4,
                                      ),
                                      Container(
                                        width: dims.deviceWidth * 0.6,
                                        height: dims.deviceHeight * 0.08,
                                        color: theme.colorScheme.primaryVariant,
                                        child: TextButton(
                                          onPressed: () {
                                            // TODO
                                          },
                                          child: Material(
                                            color: theme
                                                .colorScheme.primaryVariant,
                                            child: AutoSizeText(
                                              'continue'.tr,
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
                                      const Spacer()
                                    ],
                                  ),
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
