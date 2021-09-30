import 'package:client/preferences/enums/icons.dart';
import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';

class DefaultAuthTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode? focusNode;
  final String hintText;
  final AppIcons appIcon;
  final TextInputType inputType;
  final bool encrypted;
  const DefaultAuthTextFormField(
      {required this.controller,
      required this.hintText,
      required this.appIcon,
      this.focusNode,
      this.inputType = TextInputType.text,
      this.encrypted = false,
      Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dims = DevicesDimsConfig(context);
    return Material(
      color: Colors.white.withOpacity(0.2),
      child: TextFormField(
        style: const TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        controller: controller,
        focusNode: focusNode,
        keyboardType: inputType,
        obscureText: encrypted,
        decoration: InputDecoration(
          prefixIcon: SizedBox(
            width: dims.deviceWidth * 0.09,
            height: dims.deviceWidth * 0.06,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(appIcon.iconAssetName),
                        fit: BoxFit.scaleDown)),
              ),
            ),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: dims.configWidth(2),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: dims.configWidth(2),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: dims.configWidth(8),
            ),
          ),
        ),
      ),
    );
  }
}
