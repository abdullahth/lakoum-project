import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:client/preferences/enums/images.dart';
import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';

class InnerHorizontalBanner extends StatelessWidget {
  String title;
  int itemsCount;
  AppImages backgroundImage;
  Function onTap;
  InnerHorizontalBanner(
      {Key? key,
      required this.title,
      required this.backgroundImage,
      required this.onTap,
      required this.itemsCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dims = DevicesDimsConfig(context);
    return InkWell(
      onTap: () {
        onTap();
      },
      child: ResponsivePadding(
        padding:
            SymetricPadding(context: context, horizontal: 12, vertical: 12),
        child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.shade800,
                blurRadius: dims.configWidth(20),
                offset: Offset(
                  0,
                  dims.configHeight(10),
                ),
              )
            ]),
            width: double.infinity,
            height: dims.deviceHeight * 0.2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(dims.configWidth(10)),
              child: Stack(
                children: [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(backgroundImage.assetName),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.black38,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: ResponsivePadding(
                      padding: SymetricPadding(
                          context: context, horizontal: 24, vertical: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(flex: 2),
                          AutoSizeText(
                            title,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w900),
                            maxLines: 2,
                            maxFontSize: 48,
                            minFontSize: 24,
                          ),
                          const Spacer(),
                          AutoSizeText(
                            '$itemsCount Items',
                            style: const TextStyle(
                                color: Colors.white54,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            maxLines: 1,
                            maxFontSize: 32,
                            minFontSize: 16,
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
