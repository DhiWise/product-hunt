import 'package:flutter/material.dart';
import 'package:product_hunt/core/app_export.dart';
import 'package:product_hunt/core/utils/validation_functions.dart';
import 'package:product_hunt/data/models/graphql/post_graphql_req.dart';
import 'package:product_hunt/widgets/custom_button.dart';
import 'package:product_hunt/widgets/custom_text_form_field.dart';

import '../topics_list_with_searching_screen/widgets/topics_list_with_searching_item_widget.dart';
import 'controller/topics_list_with_searching_controller.dart';
import 'models/topics_list_with_searching_item_model.dart';

class TopicsListWithSearchingScreen
    extends GetWidget<TopicsListWithSearchingController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: size.width,
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  decoration: AppDecoration.fillBluegray900,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        margin: getMargin(
                                          left: 16,
                                          top: 24,
                                          right: 16,
                                          bottom: 16,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              3.00,
                                            ),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      3.00,
                                                    ),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    CustomTextFormField(
                                                        width: 308,
                                                        focusNode: FocusNode(),
                                                        controller: controller
                                                            .groupFourteenController,
                                                        hintText:
                                                            "msg_search_porduct"
                                                                .tr,
                                                        textInputAction:
                                                            TextInputAction
                                                                .done,
                                                        validator: (value) {
                                                          if (value == null ||
                                                              (!isText(value,
                                                                  isRequired:
                                                                      true))) {
                                                            return "";
                                                          }
                                                          return null;
                                                        }),
                                                    CustomButton(
                                                        width: 80,
                                                        text: "lbl_search".tr,
                                                        variant: ButtonVariant
                                                            .FillBluegray40033,
                                                        fontStyle:
                                                            ButtonFontStyle
                                                                .SegoeUI16,
                                                        onTap: onTapBtnSearch),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 16,
                                    top: 32,
                                    right: 16,
                                  ),
                                  child: Text(
                                    "lbl_topics".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSegoeUISemibold24
                                        .copyWith(),
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    top: 23,
                                  ),
                                  decoration: AppDecoration.fillBluegray900,
                                  child: Obx(
                                    () => ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller
                                          .topicsListWithSearchingModelObj
                                          .value
                                          .topicsListWithSearchingItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        TopicsListWithSearchingItemModel model =
                                            controller
                                                .topicsListWithSearchingModelObj
                                                .value
                                                .topicsListWithSearchingItemList[index];
                                        return TopicsListWithSearchingItemWidget(
                                            model, onTapRow: () {
                                          String id = model.id.toString();
                                          String name = model.artificialInteTxt
                                              .toString();
                                          onTapRow(id, name);
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorConstant.gray900,
              ),
              child: Padding(
                padding: getPadding(
                  top: 13,
                  bottom: 12,
                ),
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
                        margin: getMargin(
                          top: 1,
                          bottom: 2,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 15,
                                right: 15,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgVector26X22,
                                height: getVerticalSize(
                                  26.00,
                                ),
                                width: getHorizontalSize(
                                  22.00,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: getPadding(
                                  top: 10,
                                ),
                                child: Text(
                                  "lbl_products".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtSegoeUISemibold14Bluegray400
                                      .copyWith(
                                    height: 1.00,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        onTapColumnticket();
                      },
                      child: Container(
                        margin: getMargin(
                          top: 1,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 8,
                                right: 8,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgTicket,
                                height: getVerticalSize(
                                  26.00,
                                ),
                                width: getHorizontalSize(
                                  21.00,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: getPadding(
                                  top: 12,
                                ),
                                child: Text(
                                  "lbl_topics".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtSegoeUISemibold14Bluegray400
                                      .copyWith(
                                    height: 1.00,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 1,
                        bottom: 2,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 6,
                              right: 6,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgSearch,
                              height: getSize(
                                26.00,
                              ),
                              width: getSize(
                                26.00,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                top: 10,
                              ),
                              child: Text(
                                "lbl_search".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtSegoeUISemibold14.copyWith(
                                  height: 1.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        onTapColumnvectorseven();
                      },
                      child: Container(
                        margin: getMargin(
                          bottom: 2,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 24,
                                right: 23,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgVector,
                                height: getSize(
                                  29.00,
                                ),
                                width: getSize(
                                  29.00,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: getPadding(
                                  top: 9,
                                ),
                                child: Text(
                                  "lbl_leaderboard".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtSegoeUISemibold14Bluegray400
                                      .copyWith(
                                    height: 1.00,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTapRow(String id, String name) {
    Get.toNamed(AppRoutes.topicProductListScreen, arguments: {
      NavigationArgs.topicid: id,
      NavigationArgs.topicname: name,
    });
  }

  onTapColumnvectornine() {
    Get.toNamed(AppRoutes.productListScreen);
  }

  onTapColumnticket() {
    Get.toNamed(AppRoutes.topicsScreen);
  }

  onTapColumnvectorseven() {
    Get.toNamed(AppRoutes.leaderboardScreen);
  }

  void onTapBtnSearch() {
    if (_formKey.currentState!.validate()) {
      PostGraphqlReq postGraphqlReq = PostGraphqlReq();
      Map<String, dynamic> queryParams = {
        "query": '{topics(query:"' +
            controller.groupFourteenController.text.toString() +
            '"){nodes{id,name,followersCount,image,isFollowing,postsCount}}}'
      };
      controller.callCreateGraphql(
        postGraphqlReq.toJson(),
        successCall: _onCreateGraphqlSuccess,
        errCall: _onCreateGraphqlError,
        queryParams: queryParams,
      );
    }
  }

  void _onCreateGraphqlSuccess() {}

  void _onCreateGraphqlError() {}
}
