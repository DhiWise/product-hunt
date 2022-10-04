import 'package:flutter/material.dart';
import 'package:product_hunt/core/app_export.dart';

import '../controller/leaderboard_controller.dart';
import '../models/leaderboard_month_item_model.dart';

// ignore: must_be_immutable
class LeaderboardMonthItemWidget extends StatelessWidget {
  LeaderboardMonthItemWidget(this.leaderboardMonthItemModelObj,
      {this.onTapRow});

  LeaderboardMonthItemModel leaderboardMonthItemModelObj;

  var controller = Get.find<LeaderboardController>();
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Obx(
              () => CommonImageView(
                url: leaderboardMonthItemModelObj.rectangleFourImg.value,
                height: getSize(
                  50.00,
                ),
                width: getSize(
                  50.00,
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                210.00,
              ),
              margin: getMargin(
                left: 16,
                top: 3,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      right: 10,
                    ),
                    child: Obx(
                      () => Text(
                        leaderboardMonthItemModelObj.nimbusTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtSegoeUISemibold18.copyWith(),
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      192.00,
                    ),
                    child: Obx(
                      () => Text(
                        leaderboardMonthItemModelObj.cloudbasedecoTxt.value,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtSegoeUI16.copyWith(
                          height: 1.38,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: getVerticalSize(
                64.00,
              ),
              width: getHorizontalSize(
                1.00,
              ),
              margin: getMargin(
                left: 49,
                top: 4,
                bottom: 4,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.bluegray901,
              ),
            ),
            Container(
              // margin: getMargin(
              //   left: 10,
              //   top: 13,
              //   right: 10,
              //   bottom: 15,
              // ),
              width: getHorizontalSize(70),
              height: getVerticalSize(50),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 3,
                        right: 3,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgVectorWhiteA700,
                        height: getVerticalSize(
                          11.00,
                        ),
                        width: getHorizontalSize(
                          13.00,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          top: 12,
                        ),
                        child: Obx(
                          () => Text(
                            leaderboardMonthItemModelObj.ninetyFourTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSegoeUISemibold20.copyWith(
                              height: 1.00,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
