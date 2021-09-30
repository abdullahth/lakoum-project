import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:client/preferences/enums/images.dart';
import 'package:client/preferences/enums/icons.dart';
import 'package:client/preferences/router.dart';
import 'package:client/views/auth_views/login_page/components/forget_password_sliding_sheet.dart';
import 'package:client/views/auth_views/mobile_verfication/mobile_verification.dart';
import 'package:client/views/auth_views/widgets/text_form_field/text_form_field.dart';
import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _emailAddressController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameController = TextEditingController();
  final _mobileController = TextEditingController();

  final _emailAddressFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _usernameFocusNode = FocusNode();
  final _mobileFocusNode = FocusNode();

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
                                      'sign_up'.tr,
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
                                controller: _usernameController,
                                focusNode: _usernameFocusNode,
                                hintText: 'username'.tr,
                                appIcon: AppIcons.loginUsernameIcon,
                              ),
                              SizedBox(height: dims.deviceHeight * 0.025),
                              DefaultAuthTextFormField(
                                controller: _emailAddressController,
                                focusNode: _emailAddressFocusNode,
                                hintText: 'email'.tr,
                                appIcon: AppIcons.loginEmailIcon,
                              ),
                              SizedBox(height: dims.deviceHeight * 0.025),
                              DefaultAuthTextFormField(
                                controller: _mobileController,
                                focusNode: _mobileFocusNode,
                                hintText: 'mobile'.tr,
                                inputType: TextInputType.number,
                                appIcon: AppIcons.loginMobileIcon,
                              ),
                              SizedBox(height: dims.deviceHeight * 0.025),
                              DefaultAuthTextFormField(
                                controller: _passwordController,
                                focusNode: _passwordFocusNode,
                                hintText: 'password'.tr,
                                appIcon: AppIcons.loginPasswordIcon,
                                encrypted: true,
                              ),
                              SizedBox(height: dims.deviceHeight * 0.025),
                              const Spacer(flex: 2),
                              Container(
                                width: double.infinity,
                                height: dims.deviceHeight * 0.08,
                                color: theme.colorScheme.primaryVariant,
                                child: TextButton(
                                  onPressed: () {
                                    Get.toNamed(
                                        AppRouter.mobileVerificationRoute);
                                  },
                                  child: Material(
                                    color: theme.colorScheme.primaryVariant,
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
                              const Spacer(flex: 2),
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
