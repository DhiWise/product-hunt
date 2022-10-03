import 'package:flutter/material.dart';
import 'package:product_hunt/core/app_export.dart';
import 'package:product_hunt/widgets/custom_icon_button.dart';

import '../topic_product_list_screen/widgets/listrectanglefour3_item_widget.dart';
import 'controller/topic_product_list_controller.dart';
import 'models/topic_product_list_item_model.dart';

class TopicProductListScreen extends GetWidget<TopicProductListController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      width: size.width,
                      margin: getMargin(top: 24),
                      child: Padding(
                          padding: getPadding(left: 16, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(top: 4, bottom: 3),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: InkWell(
                                                  onTap: () {
                                                    onTapImgArrowleft();
                                                  },
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 5,
                                                          bottom: 4,
                                                          right: 10),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowleft,
                                                          height:
                                                              getVerticalSize(
                                                                  17.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  10.00))))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 7, top: 8),
                                              child: Text("lbl_topics".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSegoeUISemibold24))
                                        ])),
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomIconButton(
                                          height: 40,
                                          width: 40,
                                          child: CommonImageView(
                                              svgPath: ImageConstant
                                                  .imgVolume40X40)),
                                      CustomIconButton(
                                          height: 40,
                                          width: 40,
                                          margin: getMargin(left: 16),
                                          child: CommonImageView(
                                              svgPath: ImageConstant.imgReply))
                                    ])
                              ]))),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: getPadding(top: 29),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              getPadding(left: 16, right: 16),
                                          child: Text(controller.topicname + " Products",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtSegoeUISemibold24),
                                        )),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            margin: getMargin(top: 26),
                                            decoration:
                                                AppDecoration.fillBluegray900,
                                            child: Obx(() => ListView.builder(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                itemCount: controller
                                                    .topicProductListModelObj
                                                    .value
                                                    .topicProductListItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  TopicProductListItemModel
                                                      model = controller
                                                          .topicProductListModelObj
                                                          .value
                                                          .topicProductListItemList[index];
                                                  return TopicProductListItemWidget(
                                                      model, onTapRow:
                                                      () {
                                                    onTapRow(
                                                        model.id.toString());
                                                  });
                                                }))))
                                  ]))))
                ])));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapRow(String postId) {
    Get.toNamed(AppRoutes.productDetailPageScreen, arguments: {
      NavigationArgs.postid: postId,
    });
  }

}
