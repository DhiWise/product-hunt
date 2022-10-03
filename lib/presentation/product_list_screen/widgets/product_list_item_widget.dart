import '../controller/product_list_controller.dart';
import '../models/product_list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:product_hunt/core/app_export.dart';

// ignore: must_be_immutable
class ProductListItemWidget extends StatelessWidget {
  ProductListItemWidget(this.productListItemModelObj,
      {this.onTapRowrectanglefour});

  ProductListItemModel productListItemModelObj;

  var controller = Get.find<ProductListController>();

  VoidCallback? onTapRowrectanglefour;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: () {
          onTapRowrectanglefour!();
        },
        child: Padding(
          padding: getPadding(
            left: 16,
            top: 12.0,
            right: 16,
            bottom: 12.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Obx(
                () => CommonImageView(
                  url: productListItemModelObj.rectangleFourImg.value,
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
                          productListItemModelObj.nimbusTxt.value,
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
                          productListItemModelObj.cloudbasedecoTxt.value,
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
                          right: 4,
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
                              productListItemModelObj.ninetyFourTxt.value,
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
      ),
    );
  }
}
