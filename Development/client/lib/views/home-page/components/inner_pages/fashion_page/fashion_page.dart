import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:client/preferences/enums/icons.dart';
import 'package:client/preferences/enums/images.dart';
import 'package:client/views/global_widgets/search_bar/search_bar.dart';
import 'package:client/views/home-page/components/inner_pages/components/inner_horizontal_banner/inner_horizontal_banner.dart';
import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FashionCategoryInnerPage extends StatelessWidget {
  const FashionCategoryInnerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dims = DevicesDimsConfig(context);
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: theme.primaryColor,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          title: AutoSizeText(
            'fashion'.tr,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Container(
                  width: dims.configWidth(32),
                  height: dims.configHeight(32),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              AppIcons.whiteCartIcon.iconAssetName))),
                ))
          ],
        ),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            ConstantSearchTextField(
              searchCallback: (searchToken) {
                // TODO
              },
            ),
            InnerHorizontalBanner(
              title: 'women'.tr,
              backgroundImage: AppImages.fasionPageWomen,
              onTap: () {
                // TODO
              },
              itemsCount: 150,
            ),
            InnerHorizontalBanner(
              title: 'men'.tr,
              backgroundImage: AppImages.fasionPageMen,
              onTap: () {
                // TODO
              },
              itemsCount: 150,
            ),
            InnerHorizontalBanner(
              title: 'girls'.tr,
              backgroundImage: AppImages.fashionPageGirls,
              onTap: () {
                // TODO
              },
              itemsCount: 150,
            ),
            InnerHorizontalBanner(
              title: 'boys'.tr,
              backgroundImage: AppImages.fasionPageBoys,
              onTap: () {
                // TODO
              },
              itemsCount: 150,
            ),
            InnerHorizontalBanner(
              title: 'trends'.tr,
              backgroundImage: AppImages.fasionPageTrends,
              onTap: () {
                // TODO
              },
              itemsCount: 150,
            ),
            InnerHorizontalBanner(
              title: 'sale'.tr,
              backgroundImage: AppImages.fasionPageSale,
              onTap: () {
                // TODO
              },
              itemsCount: 150,
            )
          ],
        ),
      ),
    );
  }
}
