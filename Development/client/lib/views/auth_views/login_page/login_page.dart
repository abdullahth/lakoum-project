import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:client/preferences/enums/images.dart';
import 'package:client/preferences/enums/icons.dart';
import 'package:client/preferences/router.dart';
import 'package:client/views/auth_views/sign_up_page/sign_up_page.dart';
import 'package:client/views/auth_views/widgets/text_form_field/text_form_field.dart';
import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/forget_password_sliding_sheet.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailAddressController = TextEditingController();
  final _passwordController = TextEditingController();

  final _emailAddressFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

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
    return Scaffold(
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
                                    'welcome'.tr,
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
                            SizedBox(height: dims.deviceHeight * 0.025),
                            DefaultAuthTextFormField(
                              controller: _emailAddressController,
                              focusNode: _emailAddressFocusNode,
                              hintText: 'email'.tr,
                              appIcon: AppIcons.loginUsernameIcon,
                            ),
                            SizedBox(height: dims.deviceHeight * 0.025),
                            DefaultAuthTextFormField(
                              controller: _passwordController,
                              focusNode: _passwordFocusNode,
                              hintText: 'password'.tr,
                              appIcon: AppIcons.loginPasswordIcon,
                            ),
                            SizedBox(height: dims.deviceHeight * 0.025),
                            SizedBox(
                              width: double.infinity,
                              height: dims.deviceHeight * 0.1,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: dims.deviceWidth * 0.5,
                                    child: Material(
                                      color: Colors.transparent,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Checkbox(
                                              activeColor: Colors.white,
                                              checkColor: theme.primaryColor,
                                              value: _keepLogIn,
                                              onChanged: (v) {
                                                setState(() {
                                                  _keepLogIn = v ?? false;
                                                });
                                              }),
                                          TextButton(
                                            onPressed: () {
                                              setState(() {
                                                _keepLogIn = !_keepLogIn;
                                              });
                                            },
                                            child: AutoSizeText(
                                              'keep_log_in'.tr,
                                              maxFontSize: 24,
                                              minFontSize: 8,
                                              style: const TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: dims.configWidth(8)),
                                  TextButton(
                                    onPressed: () {
                                      forgetPasswordSlidingSheet(context);
                                    },
                                    child: AutoSizeText(
                                      'forget_password'.tr,
                                      maxFontSize: 24,
                                      minFontSize: 8,
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
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
                                    'login'.tr,
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
                            SizedBox(
                              width: double.infinity,
                              height: dims.deviceHeight * 0.08,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Center(
                                      child: Container(
                                        height: dims.configHeight(2),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: dims.configWidth(8)),
                                  Material(
                                    color: Colors.transparent,
                                    child: AutoSizeText(
                                      'or'.tr.toUpperCase(),
                                      maxFontSize: 24,
                                      minFontSize: 12,
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                  SizedBox(width: dims.configWidth(8)),
                                  Expanded(
                                    child: Center(
                                      child: Container(
                                        height: dims.configHeight(2),
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Material(
                                color: Colors.transparent,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    AutoSizeText(
                                      'sign_up_with'.tr,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      maxFontSize: 24,
                                      minFontSize: 16,
                                      maxLines: 1,
                                    ),
                                    SizedBox(
                                      width: dims.deviceWidth * 0.3,
                                      height: dims.deviceHeight * 0.08,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                //TODO
                                              },
                                              icon: Container(
                                                width: dims.deviceWidth * 0.15,
                                                height: dims.deviceHeight * 0.1,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                  image: AssetImage(AppIcons
                                                      .facebookWhiteIcon
                                                      .iconAssetName),
                                                  fit: BoxFit.fill,
                                                )),
                                              )),
                                          IconButton(
                                              onPressed: () {
                                                //TODO
                                              },
                                              icon: Container(
                                                width: dims.deviceWidth * 0.15,
                                                height: dims.deviceHeight * 0.1,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                  image: AssetImage(AppIcons
                                                      .googleWhiteIcon
                                                      .iconAssetName),
                                                  fit: BoxFit.fill,
                                                )),
                                              ))
                                        ],
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Get.toNamed(AppRouter.signUpRoute);
                                      },
                                      child: Material(
                                        color: Colors.transparent,
                                        child: AutoSizeText.rich(
                                          TextSpan(children: [
                                            TextSpan(
                                              text: 'dont_have_account'.tr,
                                            ),
                                            TextSpan(
                                                text: 'sign_up'.tr,
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.w900))
                                          ]),
                                          maxFontSize: 24,
                                          minFontSize: 12,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
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
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
