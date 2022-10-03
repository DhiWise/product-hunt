import 'package:flutter/material.dart';
import 'package:product_hunt/core/app_export.dart';
import 'package:product_hunt/widgets/custom_button.dart';

import '../controller/topics_list_with_searching_controller.dart';
import '../models/topics_list_with_searching_item_model.dart';

// ignore: must_be_immutable
class TopicsListWithSearchingItemWidget extends StatelessWidget {
  TopicsListWithSearchingItemWidget(this.topicsListWithSearchingItemModelObj,
      {this.onTapRow});

  TopicsListWithSearchingItemModel topicsListWithSearchingItemModelObj;

  var controller = Get.find<TopicsListWithSearchingController>();
  VoidCallback? onTapRow;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        left: 16,
        top: 12.0,
        right: 16,
        bottom: 12.0,
      ),
      child: GestureDetector(
        onTap: () {
          onTapRow!();
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                CommonImageView(
                  url: topicsListWithSearchingItemModelObj.rectangleFourImg.value,
                  height: getSize(
                    50.00,
                  ),
                  width: getSize(
                    50.00,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    150.00,
                  ),
                  margin: getMargin(
                    left: 16,
                    top: 5,
                    bottom: 1,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          topicsListWithSearchingItemModelObj
                              .artificialInteTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSegoeUISemibold18.copyWith(),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 8,
                          right: 10,
                        ),
                        child: Text(
                          "${topicsListWithSearchingItemModelObj.k41kFollowersTxt.value} Followers",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSegoeUI16.copyWith(
                            height: 1.00,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomButton(
                  width: 93,
                  text: "lbl_follow".tr,
                  margin: getMargin(
                    left: 69,
                    top: 6,
                    bottom: 6,
                  ),
                  variant: ButtonVariant.OutlineBluegray40033,
                  fontStyle: ButtonFontStyle.SegoeUI16,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
