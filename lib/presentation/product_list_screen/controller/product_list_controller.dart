import '/core/app_export.dart';
import 'package:product_hunt/presentation/product_list_screen/models/product_list_model.dart';
import 'package:flutter/material.dart';
import 'package:product_hunt/data/models/all/get_all_resp.dart';
import 'package:product_hunt/data/apiClient/api_client.dart';
import '../models/product_list_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProductListController extends GetxController {
  Rx<ProductListModel> productListModelObj = ProductListModel().obs;

  GetAllResp getAllResp = GetAllResp();

  @override
  void onReady() {
    super.onReady();
    Map<String, dynamic> queryParams = {};
    this.callFetchAll(
      successCall: _onFetchAllSuccess,
      errCall: _onFetchAllError,
      queryParams: queryParams,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchAll(
      {VoidCallback? successCall,
      VoidCallback? errCall,
      Map<String, dynamic> queryParams = const {}}) async {
    return Get.find<ApiClient>().fetchAll(
        headers: {
          'Authorization': "Bearer ${Constants.token}",
        },
        onSuccess: (resp) {
          onFetchAllSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchAllError(err);
          if (errCall != null) {
            errCall();
          }
        },
        queryParams: queryParams);
  }

  void onFetchAllSuccess(var response) {
    getAllResp = GetAllResp.fromJson(response);
  }

  void onFetchAllError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void _onFetchAllSuccess() {
    List<ProductListItemModel> productListItemModelList = [];
    if (getAllResp!.posts! != null && getAllResp!.posts!.isNotEmpty) {
      for (var element in getAllResp!.posts!) {
        var productListItemModel = ProductListItemModel();
        productListItemModel.nimbusTxt.value = element.name!.toString();
        productListItemModel.cloudbasedecoTxt.value =
            element.tagline!.toString();
        productListItemModel.ninetyFourTxt.value =
            element.votesCount!.toString();
        productListItemModel.rectangleFourImg.value =
            element.thumbnail!.imageUrl!.toString();
        productListItemModelList.add(productListItemModel);
      }
    }
    productListModelObj.value.productListItemList.value =
        productListItemModelList;
  }

  void _onFetchAllError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }
}
