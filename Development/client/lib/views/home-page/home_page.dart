import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:get/get.dart';
import 'package:client/preferences/enums/icons.dart';
import 'package:client/preferences/enums/images.dart';
import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';

// Home Page Components
import 'components/app_bar/app_bar.dart';
import 'components/horizontal_banner/horizontal_banner.dart';
import 'components/category_card/category_card.dart';
import 'components/entry_banner/entry_banner.dart';
import 'components/search_bar/search_bar.dart';

class HomrPage extends StatefulWidget {
  const HomrPage({Key? key}) : super(key: key);

  @override
  _HomrPageState createState() => _HomrPageState();
}

class _HomrPageState extends State<HomrPage> {
  @override
  Widget build(BuildContext context) {
    final dims = DevicesDimsConfig(context);
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const CustomAppBar(),
            HomePageSearchBar(searchCallback: (searchToken) {}),
            const HomePageBanner(),
            Container(
              width: dims.deviceWidth,
              height: dims.deviceHeight * 0.1,
              color: theme.primaryColor.withOpacity(0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: dims.deviceWidth * 0.1,
                    height: dims.deviceHeight * 0.1,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                AppIcons.homePageDeliveryIcon.iconAssetName))),
                  ),
                  AutoSizeText.rich(
                    TextSpan(
                        text: 'delivery_home_page'.tr,
                        style: const TextStyle(color: Colors.white)),
                    maxLines: 1,
                    minFontSize: 24,
                    maxFontSize: 48,
                  ),
                ],
              ),
            ),
            SizedBox(height: dims.configHeight(24)),
            SizedBox(
              height: dims.deviceHeight * 0.4,
              child: Row(
                children: [
                  Expanded(
                    child: CategoryGridCard(
                      title: 'fashion'.tr,
                      onTap: () {
                        // TODO
                      },
                      image: AppImages.homePageFashionCategory,
                    ),
                  ),
                  Expanded(
                    child: CategoryGridCard(
                      title: 'cosmatics'.tr,
                      onTap: () {
                        // TODO
                      },
                      image: AppImages.homePageCosmaticsCategory,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: dims.deviceHeight * 0.4,
              child: Row(
                children: [
                  Expanded(
                    child: CategoryGridCard(
                      title: 'fragrance'.tr,
                      onTap: () {
                        // TODO
                      },
                      image: AppImages.homePageFragranceCategory,
                    ),
                  ),
                  Expanded(
                    child: CategoryGridCard(
                      title: 'health_and_care'.tr,
                      onTap: () {
                        // TODO
                      },
                      image: AppImages.homePageHealthAndCareCategory,
                    ),
                  ),
                ],
              ),
            ),
            HorizontalBanner(
              title: 'elctronics_and_mobile'.tr,
              subTitle: '',
              onTap: () {
                // TODO
              },
              backgroundImage: AppImages.homePageElctronicsCategory,
            ),
            SizedBox(height: dims.configHeight(12)),
            SizedBox(
              width: double.infinity,
              height: dims.deviceHeight * 0.4,
              child: Row(
                children: [
                  Expanded(
                    child: CategoryGridCard(
                      title: 'home_and_kitchen'.tr,
                      onTap: () {
                        // TODO
                      },
                      image: AppImages.homePageHomeAndKitchenCategory,
                    ),
                  ),
                  Expanded(
                    child: CategoryGridCard(
                      title: 'coffee_equipment'.tr,
                      onTap: () {
                        // TODO
                      },
                      image: AppImages.homrPageCoffeeEquipmentCategory,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: dims.configHeight(12)),
            HorizontalBanner(
              title: 'travel'.tr,
              backgroundImage: AppImages.homePageTravelCategory,
              onTap: () {
                // TODO
              },
              subTitle: 'discover'.tr,
            ),
            HorizontalBanner(
              title: 'decoration'.tr,
              backgroundImage: AppImages.homePageDecorationCategory,
              onTap: () {
                // TODO
              },
              subTitle: '',
            ),
            SizedBox(
              width: double.infinity,
              height: dims.deviceHeight * 0.4,
              child: Row(
                children: [
                  Expanded(
                    child: CategoryGridCard(
                      title: 'pet'.tr,
                      onTap: () {
                        // TODO
                      },
                      image: AppImages.homePagePetCategory,
                    ),
                  ),
                  Expanded(
                    child: CategoryGridCard(
                      title: 'exercise'.tr,
                      onTap: () {
                        // TODO
                      },
                      image: AppImages.homePageExerciseCategory,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: dims.configHeight(12)),
            HorizontalBanner(
              title: 'toys'.tr,
              backgroundImage: AppImages.homePageToysCategory,
              onTap: () {
                // TODO
              },
              subTitle: '',
            ),
            HorizontalBanner(
              title: 'books'.tr,
              backgroundImage: AppImages.homePageBooksCategory,
              onTap: () {
                // TODO
              },
              subTitle: '',
            )
          ],
        ),
      ),
    );
  }
}
