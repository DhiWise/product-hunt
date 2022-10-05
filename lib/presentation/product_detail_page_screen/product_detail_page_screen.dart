import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:product_hunt/core/app_export.dart';
import 'package:product_hunt/data/models/postId/get_post_id_resp.dart';
import 'package:product_hunt/widgets/custom_button.dart';

import 'controller/product_detail_page_controller.dart';

class ProductDetailPageScreen extends GetWidget<ProductDetailPageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Container(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: getVerticalSize(60),
                          width: size.width,
                          margin: getMargin(left: 26),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapImgArrowleft();
                                    },
                                    child: Padding(
                                        padding:
                                            getPadding(top: 11, bottom: 10),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgArrowleft,
                                            height: getVerticalSize(17.00),
                                            width: getHorizontalSize(10.00)))),
                              ]))),
                  Expanded(
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: SingleChildScrollView(
                              padding: getPadding(top: 0),
                              child: Container(
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                    SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Container(
                                            height: getVerticalSize(913.00),
                                            width: size.width,
                                            child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          decoration: AppDecoration
                                                              .fillBluegray900,
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                        padding: getPadding(left: 16, top: 24, right: 16),
                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                          Obx(() => CommonImageView(
                                                                              url: controller.productDetailPageModelObj.value.rectangleFourImg.value,
                                                                              height: getSize(72.00),
                                                                              width: getSize(72.00))),
                                                                          Container(
                                                                              margin: getMargin(left: 16, top: 3),
                                                                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                Padding(padding: getPadding(right: 10), child: Obx(() => Text(controller.productDetailPageModelObj.value.nimbusTxt.value, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSegoeUISemibold18.copyWith()))),
                                                                                Container(width: getHorizontalSize(236.00), margin: getMargin(top: 12), child: Obx(() => Text(controller.productDetailPageModelObj.value.cloudbasedecoTxt.value, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtSegoeUI16.copyWith(height: 1.38))))
                                                                              ]))
                                                                        ]))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                        padding: getPadding(left: 16, top: 400, right: 16),
                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                          CustomButton(
                                                                              width: 190,
                                                                              text: "lbl_get_it".tr,
                                                                              variant: ButtonVariant.FillWhiteA700,
                                                                              padding: ButtonPadding.PaddingAll18,
                                                                              fontStyle: ButtonFontStyle.SegoeUIBold18),
                                                                          Container(
                                                                              width: getHorizontalSize(190),
                                                                              decoration: AppDecoration.fillRed600.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                              child: Center(
                                                                                child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                                                                                  Padding(padding: getPadding(left: 39, top: 23, bottom: 23), child: CommonImageView(svgPath: ImageConstant.imgVectorWhiteA700, height: getVerticalSize(11.00), width: getHorizontalSize(13.00))),
                                                                                  Padding(padding: getPadding(left: 9, top: 20, right: 38, bottom: 20), child: Obx(() => Text(controller.productDetailPageModelObj.value.upvoteCounterTxt.value, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtGilroyBold18.copyWith(height: 1.00))))
                                                                                ]),
                                                                              ))
                                                                        ]))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 29,
                                                                        right:
                                                                            16),
                                                                    child: Text(
                                                                        "",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtSegoeUI16
                                                                            .copyWith(height: 1.00))),
                                                                Container(
                                                                    width: getHorizontalSize(
                                                                        366.00),
                                                                    margin: getMargin(
                                                                        left:
                                                                            16,
                                                                        top: 26,
                                                                        right:
                                                                            16,
                                                                        bottom:
                                                                            169),
                                                                    child: Obx(() => Text(
                                                                        controller
                                                                            .productDetailPageModelObj
                                                                            .value
                                                                            .description
                                                                            .value,
                                                                        maxLines:
                                                                            null,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtSegoeUISemibold16
                                                                            .copyWith(height: 1.56))))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  352.00),
                                                          width: size.width,
                                                          margin: getMargin(
                                                              top: 120,
                                                              bottom: 120),
                                                          decoration:
                                                              AppDecoration
                                                                  .fillGray900,
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child:
                                                                        Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              16,
                                                                          bottom:
                                                                              16),
                                                                      child:
                                                                          Obx(
                                                                        () =>
                                                                            CarouselSlider(
                                                                          options:
                                                                              CarouselOptions(
                                                                            height:
                                                                                getVerticalSize(320.00),
                                                                            enlargeCenterPage:
                                                                                true,
                                                                          ),
                                                                          items: controller.productDetailPageModelObj.value.media.isNotEmpty
                                                                              ? controller.productDetailPageModelObj.value.media
                                                                                  .map(
                                                                                    (e) => CommonImageView(
                                                                                      url: e.imageUrl,
                                                                                      height: getVerticalSize(320.00),
                                                                                      width: getHorizontalSize(
                                                                                        428.00,
                                                                                      ),
                                                                                    ),
                                                                                  )
                                                                                  .toList()
                                                                              : [],
                                                                        ),
                                                                      ),
                                                                    )),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    child: Container(
                                                                        margin: getMargin(all: 16),
                                                                        decoration: AppDecoration.outlineWhiteA700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                        child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                                                                          Padding(
                                                                              padding: getPadding(left: 9, top: 10, bottom: 10),
                                                                              child: CommonImageView(svgPath: ImageConstant.imgCamera, height: getVerticalSize(11.00), width: getHorizontalSize(13.00))),
                                                                          Padding(
                                                                              padding: getPadding(left: 9, top: 7, right: 8, bottom: 6),
                                                                              child: Obx(() => Text(controller.productDetailPageModelObj.value.media.length.toString(), overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSegoeUISemibold18.copyWith())))
                                                                        ])))
                                                              ]))),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Obx(
                                                        () => Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  bottom: 100),
                                                          child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    40),
                                                            child: ListView
                                                                .builder(
                                                                    scrollDirection:
                                                                        Axis
                                                                            .horizontal,
                                                                    shrinkWrap:
                                                                        true,
                                                                    itemCount: controller
                                                                        .productDetailPageModelObj
                                                                        .value
                                                                        .topics
                                                                        .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            index) {
                                                                      return Container(
                                                                        padding: EdgeInsets.only(
                                                                            right:
                                                                                5,
                                                                            left:
                                                                                5),
                                                                        child: CustomButton(
                                                                            width:
                                                                                155,
                                                                            text:
                                                                                controller.productDetailPageModelObj.value.topics[index].name.toString().toUpperCase(),
                                                                            variant: ButtonVariant.OutlineBluegray901,
                                                                            fontStyle: ButtonFontStyle.SegoeUI14),
                                                                      );
                                                                    }),
                                                          ),
                                                        ),
                                                        // Row(
                                                        //     crossAxisAlignment: CrossAxisAlignment
                                                        //         .center,
                                                        //     mainAxisSize: MainAxisSize
                                                        //         .max,
                                                        //     children: List
                                                        //         .generate(
                                                        //         controller
                                                        //             .productDetailPageModelObj
                                                        //             .value
                                                        //             .topics
                                                        //             .length, (
                                                        //         index) {
                                                        //     })
                                                        // ),
                                                      )),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  67),
                                                          width:
                                                              getHorizontalSize(
                                                                  508.00),
                                                          margin: getMargin(
                                                              top: 24,
                                                              bottom: 24),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: size
                                                                        .width,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.bluegray901)),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    child: Obx(
                                                                      () =>
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.only(top: 5),
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              getVerticalSize(60),
                                                                          child: ListView.builder(
                                                                              scrollDirection: Axis.horizontal,
                                                                              shrinkWrap: true,
                                                                              itemCount: controller.productDetailPageModelObj.value.makers.length,
                                                                              itemBuilder: (context, index) {
                                                                                return Container(
                                                                                  padding: EdgeInsets.only(left: 10, right: 10),
                                                                                  child: Row(
                                                                                    children: [
                                                                                      Container(
                                                                                          height: getSize(40.00),
                                                                                          width: getSize(40.00),
                                                                                          child: Stack(alignment: Alignment.topRight, children: [
                                                                                            Align(alignment: Alignment.centerLeft, child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(20.00)), child: CommonImageView(url: controller.productDetailPageModelObj.value.makers[index].imageUrl!.s30px.toString(), height: getSize(40.00), width: getSize(40.00)))),
                                                                                          ])),
                                                                                      Padding(padding: getPadding(top: 15, bottom: 7, left: 5), child: Text(controller.productDetailPageModelObj.value.makers[index].name.toString(), overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSegoeUISemibold16.copyWith(height: 1.00))),
                                                                                      Container(height: getVerticalSize(24.00), width: getHorizontalSize(1.00), margin: getMargin(top: 8, bottom: 8, left: 8), decoration: BoxDecoration(color: ColorConstant.bluegray901)),
                                                                                    ],
                                                                                  ),
                                                                                );
                                                                              }),
                                                                        ),
                                                                      ),
                                                                    ))
                                                              ])))
                                                ]))),
                                    Container(
                                        width: double.infinity,
                                        margin: getMargin(top: 16),
                                        decoration:
                                            AppDecoration.fillBluegray900,
                                        child: Obx(() => ListView.builder(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: controller
                                                .productDetailPageModelObj
                                                .value
                                                .comments
                                                .length,
                                            itemBuilder: (context, index) {
                                              Comments model = controller
                                                  .productDetailPageModelObj
                                                  .value
                                                  .comments[index];
                                              return Column(
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 24,
                                                          right: 16),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 2,
                                                                        bottom:
                                                                            2),
                                                                child: ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(getHorizontalSize(
                                                                            20.00)),
                                                                    child: CommonImageView(
                                                                        url: controller
                                                                            .productDetailPageModelObj
                                                                            .value
                                                                            .comments[
                                                                                index]
                                                                            .user!
                                                                            .imageUrl!
                                                                            .s30px,
                                                                        height: getSize(
                                                                            40.00),
                                                                        width: getSize(
                                                                            40.00)))),
                                                            Container(
                                                                margin:
                                                                    getMargin(
                                                                        left: 8,
                                                                        top: 5,
                                                                        bottom:
                                                                            2),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              right:
                                                                                  10),
                                                                          child: Text(
                                                                              controller.productDetailPageModelObj.value.comments[index].user!.name.toString(),
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtSegoeUIBold16.copyWith())),
                                                                    ]))
                                                          ])),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        width:
                                                            getHorizontalSize(
                                                                420),
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 23,
                                                                right: 16),
                                                            child: Text(
                                                                controller
                                                                    .productDetailPageModelObj
                                                                    .value
                                                                    .comments[
                                                                        index]
                                                                    .body
                                                                    .toString(),
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: AppStyle
                                                                    .txtSegoeUI16WhiteA700
                                                                    .copyWith(
                                                                        height:
                                                                            1.00))),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 17,
                                                              right: 16),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 1,
                                                                        top: 4,
                                                                        bottom:
                                                                            4),
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgVectorBluegray400,
                                                                        height: getVerticalSize(
                                                                            8.00),
                                                                        width: getHorizontalSize(
                                                                            10.00))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 5,
                                                                        top: 1,
                                                                        bottom:
                                                                            1),
                                                                    child: Text(
                                                                        "lbl_upvote"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtGilroySemiBold14
                                                                            .copyWith())),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            26,
                                                                        top: 8,
                                                                        bottom:
                                                                            8),
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgMorehorizontal,
                                                                        height: getVerticalSize(
                                                                            1.00),
                                                                        width: getHorizontalSize(
                                                                            8.00))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            26,
                                                                        top: 3),
                                                                    child: Text(
                                                                        controller
                                                                            .productDetailPageModelObj
                                                                            .value
                                                                            .comments[
                                                                                index]
                                                                            .createdAt
                                                                            .toString(),
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtGilroySemiBold14
                                                                            .copyWith()))
                                                              ])),
                                                    ],
                                                  ),
                                                ],
                                              );
                                            })))
                                  ])))))
                ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
