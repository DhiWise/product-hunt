import 'package:flutter/material.dart';
import 'package:product_hunt/core/app_export.dart';
import 'package:product_hunt/widgets/custom_icon_button.dart';

import '../leaderboard_screen/widgets/leaderboard_month_item_widget.dart';
import '../leaderboard_screen/widgets/leaderboard_today_item_widget.dart';
import '../leaderboard_screen/widgets/leaderboard_year_item_widget.dart';
import 'controller/leaderboard_controller.dart';
import 'models/leaderboard_month_item_model.dart';
import 'models/leaderboard_today_item_model.dart';
import 'models/leaderboard_year_item_model.dart';

class LeaderboardScreen extends GetWidget<LeaderboardController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Column(children: [
              Expanded(
                  child: Container(
                      margin: getMargin(top: 24),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                width: size.width,
                                margin: getMargin(left: 16, right: 16),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      CustomIconButton(
                                          height: 40,
                                          width: 40,
                                          variant: IconButtonVariant
                                              .FillDeeporange700,
                                          shape: IconButtonShape.CircleBorder20,
                                          child: CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgVolume)),
                                    ])),
                            Expanded(
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: SingleChildScrollView(
                                        padding: getPadding(top: 32),
                                        child: Container(
                                            margin: getMargin(bottom: 104),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16, right: 16),
                                                      child: Text(
                                                          "lbl_today".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtSegoeUISemibold24
                                                              .copyWith())),
                                                  Container(
                                                      margin:
                                                          getMargin(top: 23),
                                                      decoration: AppDecoration
                                                          .fillBluegray900,
                                                      child: Obx(() =>
                                                          ListView.builder(
                                                              physics:
                                                                  NeverScrollableScrollPhysics(),
                                                              shrinkWrap: true,
                                                              itemCount: controller
                                                                  .leaderboardModelObj
                                                                  .value
                                                                  .leaderboardTodayItemList
                                                                  .length,
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                LeaderboardTodayItemModel
                                                                    model =
                                                                    controller
                                                                        .leaderboardModelObj
                                                                        .value
                                                                        .leaderboardTodayItemList[index];
                                                                return LeaderboardTodayItemWidget(
                                                                    model,
                                                                    onTapRow:
                                                                        () {
                                                                          onTapRow(
                                                                      index);
                                                                });
                                                              }))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 29,
                                                          right: 16),
                                                      child: Text(
                                                          "lbl_this_month".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtSegoeUISemibold24
                                                              .copyWith())),
                                                  Container(
                                                      margin:
                                                          getMargin(top: 26),
                                                      decoration: AppDecoration
                                                          .fillBluegray900,
                                                      child: Obx(() =>
                                                          ListView.builder(
                                                              physics:
                                                                  NeverScrollableScrollPhysics(),
                                                              shrinkWrap: true,
                                                              itemCount: controller
                                                                  .leaderboardModelObj
                                                                  .value
                                                                  .leaderboardMonthItemList
                                                                  .length,
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                LeaderboardMonthItemModel
                                                                    model =
                                                                    controller
                                                                        .leaderboardModelObj
                                                                        .value
                                                                        .leaderboardMonthItemList[index];
                                                                return LeaderboardMonthItemWidget(
                                                                    model,
                                                                    onTapRow:
                                                                        () {
                                                                          onTapRow(
                                                                      index);
                                                                });
                                                              }))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 29,
                                                          right: 16),
                                                      child: Text(
                                                          "lbl_this_year".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtSegoeUISemibold24
                                                              .copyWith())),
                                                  Container(
                                                      margin:
                                                          getMargin(top: 26),
                                                      decoration: AppDecoration
                                                          .fillBluegray900,
                                                      child: Obx(() =>
                                                          ListView.builder(
                                                              physics:
                                                                  NeverScrollableScrollPhysics(),
                                                              shrinkWrap: true,
                                                              itemCount: controller
                                                                  .leaderboardModelObj
                                                                  .value
                                                                  .leaderboardYearItemList
                                                                  .length,
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                LeaderboardYearItemModel
                                                                    model =
                                                                    controller
                                                                        .leaderboardModelObj
                                                                        .value
                                                                        .leaderboardYearItemList[index];
                                                                return LeaderboardYearItemWidget(
                                                                    model,
                                                                    onTapRow:
                                                                        () {
                                                                          onTapRow(
                                                                      index);
                                                                });
                                                              })))
                                                ])))))
                          ]))),
              Container(
                  decoration: BoxDecoration(color: ColorConstant.gray900),
                  child: Padding(
                      padding: getPadding(top: 13, bottom: 12),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  onTapColumnvectornine();
                                },
                                child: Container(
                                    margin: getMargin(top: 1, bottom: 2),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  left: 15, right: 15),
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgVector26X22,
                                                  height:
                                                      getVerticalSize(26.00),
                                                  width: getHorizontalSize(
                                                      22.00))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(top: 10),
                                                  child: Text("lbl_products".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSegoeUISemibold14Bluegray400
                                                          .copyWith(
                                                              height: 1.00))))
                                        ]))),
                            GestureDetector(
                                onTap: () {
                                  onTapColumnticket();
                                },
                                child: Container(
                                    margin: getMargin(top: 1),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(left: 8, right: 8),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgTicket,
                                                  height:
                                                      getVerticalSize(26.00),
                                                  width: getHorizontalSize(
                                                      21.00))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(top: 12),
                                                  child: Text("lbl_topics".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSegoeUISemibold14Bluegray400
                                                          .copyWith(
                                                              height: 1.00))))
                                        ]))),
                            GestureDetector(
                                onTap: () {
                                  onTapColumnsearchone();
                                },
                                child: Container(
                                    margin: getMargin(top: 1, bottom: 2),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(left: 6, right: 6),
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgSearchBluegray40026X26,
                                                  height: getSize(26.00),
                                                  width: getSize(26.00))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(top: 10),
                                                  child: Text("lbl_search".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSegoeUISemibold14Bluegray400
                                                          .copyWith(
                                                              height: 1.00))))
                                        ]))),
                            Container(
                                margin: getMargin(bottom: 2),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(left: 24, right: 23),
                                          child: CommonImageView(
                                              svgPath: ImageConstant.imgSignal,
                                              height: getSize(29.00),
                                              width: getSize(29.00))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(top: 9),
                                              child: Text("lbl_leaderboard".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSegoeUISemibold14
                                                      .copyWith(height: 1.00))))
                                    ]))
                          ])))
            ])));
  }

  onTapColumnvectornine() {
    Get.toNamed(AppRoutes.productListScreen);
  }

  onTapColumnticket() {
    Get.toNamed(AppRoutes.topicsScreen);
  }

  onTapColumnsearchone() {
    Get.toNamed(AppRoutes.topicsListWithSearchingScreen);
  }

  onTapRow(int index) {
    Get.toNamed(AppRoutes.productDetailPageScreen, arguments: {
      NavigationArgs.postid: controller.getAllResp.posts![index].id.toString()
    });
  }
}
