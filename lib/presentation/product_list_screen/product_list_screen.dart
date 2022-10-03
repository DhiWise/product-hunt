import 'package:flutter/material.dart';
import 'package:product_hunt/core/app_export.dart';
import 'package:product_hunt/widgets/custom_icon_button.dart';

import '../product_list_screen/widgets/product_list_item_widget.dart';
import 'controller/product_list_controller.dart';
import 'models/product_list_item_model.dart';

class ProductListScreen extends GetWidget<ProductListController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Column(children: [
              Expanded(
                  child: Container(
                      width: size.width,
                      child: SingleChildScrollView(
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
                                                  shape: IconButtonShape
                                                      .CircleBorder20,
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgVolume)),
                                            ])),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: double.infinity,
                                            margin: getMargin(top: 29),
                                            decoration:
                                                AppDecoration.fillGray900,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              right: 16),
                                                          child: Text(
                                                              "lbl_product_list"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtSegoeUISemibold24
                                                                  .copyWith()))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          margin: getMargin(
                                                              top: 26),
                                                          decoration: AppDecoration
                                                              .fillBluegray900,
                                                          child: Obx(() =>
                                                              ListView.builder(
                                                                  physics:
                                                                      BouncingScrollPhysics(),
                                                                  shrinkWrap:
                                                                      true,
                                                                  itemCount: controller
                                                                      .productListModelObj
                                                                      .value
                                                                      .productListItemList
                                                                      .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          index) {
                                                                    ProductListItemModel
                                                                        model =
                                                                        controller
                                                                            .productListModelObj
                                                                            .value
                                                                            .productListItemList[index];
                                                                    return ProductListItemWidget(
                                                                        model,
                                                                        onTapRowrectanglefour:
                                                                            () {
                                                                      onTapRowrectanglefour(
                                                                          index);
                                                                    });
                                                                  }))))
                                                ])))
                                  ]))))),
              Container(
                  decoration: BoxDecoration(color: ColorConstant.gray900),
                  child: Padding(
                      padding: getPadding(top: 15, bottom: 12),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                                margin: getMargin(top: 2, bottom: 2),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(left: 15, right: 15),
                                          child: CommonImageView(
                                              svgPath: ImageConstant.imgMap,
                                              height: getVerticalSize(26.00),
                                              width: getHorizontalSize(22.00))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(top: 10),
                                              child: Text("lbl_products".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSegoeUISemibold14
                                                      .copyWith(height: 1.00))))
                                    ])),
                            GestureDetector(
                                onTap: () {
                                  onTapColumnticket();
                                },
                                child: Container(
                                    margin: getMargin(top: 2),
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
                                    margin: getMargin(top: 2, bottom: 2),
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
                                                      .imgSearchBluegray400,
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
                            GestureDetector(
                                onTap: () {
                                  onTapColumnvectorseven();
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
                                                  left: 24, right: 23),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgVector,
                                                  height: getSize(29.00),
                                                  width: getSize(29.00))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(top: 9),
                                                  child: Text(
                                                      "lbl_leaderboard".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSegoeUISemibold14Bluegray400
                                                          .copyWith(
                                                              height: 1.00))))
                                        ])))
                          ])))
            ])));
  }

  onTapRowrectanglefour(int index) {
    Get.toNamed(AppRoutes.productDetailPageScreen, arguments: {
      NavigationArgs.postid: controller.getAllResp.posts![index].id.toString()
    });
  }

  onTapColumnticket() {
    Get.toNamed(AppRoutes.topicsScreen);
  }

  onTapColumnsearchone() {
    Get.toNamed(AppRoutes.topicsListWithSearchingScreen);
  }

  onTapColumnvectorseven() {
    Get.toNamed(AppRoutes.leaderboardScreen);
  }
}
