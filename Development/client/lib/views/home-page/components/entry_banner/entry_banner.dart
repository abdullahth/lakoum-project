import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:client/preferences/enums/images.dart';
import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';

class HomePageBanner extends StatefulWidget {
  const HomePageBanner({Key? key}) : super(key: key);

  @override
  _HomePageBannerState createState() => _HomePageBannerState();
}

class _HomePageBannerState extends State<HomePageBanner> {
  @override
  Widget build(BuildContext context) {
    final dims = DevicesDimsConfig(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(dims.configWidth(15)),
      child: SizedBox(
        width: double.infinity,
        height: dims.deviceHeight * 0.45,
        child: PageView(
          children: [
            SizedBox(
              width: double.infinity,
              height: dims.deviceHeight * 0.45,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: dims.deviceHeight * 0.45,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(AppImages.homePageBannerOne.assetName),
                    )),
                  ),
                  Positioned(
                    child: ResponsivePadding(
                      padding: SymetricPadding(
                          context: context,
                          vertical: dims.deviceHeight * 0.075,
                          horizontal: dims.configWidth(12)),
                      child: SizedBox(
                        height: dims.deviceHeight * 0.3,
                        width: dims.deviceWidth * 0.4,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                color: const Color(0xFFF2AD2C),
                                child: const Center(
                                  child: AutoSizeText.rich(
                                    TextSpan(children: [
                                      TextSpan(
                                          text: 'SAVE UP TO',
                                          style: TextStyle(
                                            fontSize: 24,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w800,
                                          )),
                                      TextSpan(
                                          text: '\n50%',
                                          style: TextStyle(
                                            fontSize: 32,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w900,
                                          ))
                                    ]),
                                    maxLines: 2,
                                    maxFontSize: 64,
                                    minFontSize: 16,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.white,
                                child: const Center(
                                  child: AutoSizeText.rich(
                                    TextSpan(children: [
                                      TextSpan(
                                          text: 'Black',
                                          style: TextStyle(
                                            fontSize: 32,
                                            color: Color(0xFFF2AD2C),
                                            fontWeight: FontWeight.w900,
                                          )),
                                      TextSpan(
                                          text: '\nFriday',
                                          style: TextStyle(
                                            fontSize: 32,
                                            color: Color(0xFFF2AD2C),
                                            fontWeight: FontWeight.w900,
                                          ))
                                    ]),
                                    maxLines: 2,
                                    maxFontSize: 64,
                                    minFontSize: 16,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color(0xFFF2AD2C),
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    top: 0,
                    bottom: 0,
                    left: dims.configWidth(12),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
