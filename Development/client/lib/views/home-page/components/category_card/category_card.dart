import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:client/preferences/enums/images.dart';
import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';

class CategoryGridCard extends StatelessWidget {
  const CategoryGridCard({
    Key? key,
    required this.image,
    required this.onTap,
    required this.title,
  }) : super(key: key);
  final AppImages image;
  final Function onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    final dims = DevicesDimsConfig(context);
    final theme = Theme.of(context);
    return InkWell(
      onTap: () {
        onTap();
        },
      child: ResponsivePadding(
        padding: SymetricPadding(context: context, horizontal: 12, vertical: 8),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(dims.configWidth(15)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade800,
                blurRadius: dims.configWidth(20),
                offset: Offset(
                  0,
                  dims.configWidth(10),
                ),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(dims.configWidth(15)),
            child: Column(
              children: [
                Expanded(
                    flex: 8,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image.assetName,
                          ),
                        ),
                      ),
                    )),
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    child: Center(
                      child: AutoSizeText.rich(TextSpan(
                          text: title,
                          style: TextStyle(color: theme.primaryColor))),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
