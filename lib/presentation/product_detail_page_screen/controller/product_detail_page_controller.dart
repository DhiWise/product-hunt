import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:product_hunt/data/apiClient/api_client.dart';
import 'package:product_hunt/data/models/postId/get_post_id_resp.dart';
import 'package:product_hunt/presentation/product_detail_page_screen/models/product_detail_page_model.dart';

import '/core/app_export.dart';

class ProductDetailPageController extends GetxController {
  var postid = Get.arguments[NavigationArgs.postid];

  Rx<ProductDetailPageModel> productDetailPageModelObj =
      ProductDetailPageModel().obs;

  GetPostIdResp getPostIdResp = GetPostIdResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchPostId(
        successCall: _onFetchPostIdSuccess,
        errCall: _onFetchPostIdError,
        postId: Get.arguments[NavigationArgs.postid.toString()]
        //postId: "360534"
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchPostId(
      {VoidCallback? successCall,
      VoidCallback? errCall,
      String? postId}) async {
    return Get.find<ApiClient>().fetchPostId(
        headers: {
          'Authorization': "Bearer ${Constants.token}",
        },
        onSuccess: (resp) {
          onFetchPostIdSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchPostIdError(err);
          if (errCall != null) {
            errCall();
          }
        },
        postId: postId);
  }

  void onFetchPostIdSuccess(var response) {
    getPostIdResp = GetPostIdResp.fromJson(response);
  }

  void onFetchPostIdError(var err) {
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

  void _onFetchPostIdSuccess() {
    productDetailPageModelObj.value.nimbusTxt.value =
        getPostIdResp.post!.name!.toString();
    productDetailPageModelObj.value.cloudbasedecoTxt.value =
        getPostIdResp.post!.tagline!.toString();
    productDetailPageModelObj.value.rectangleFourImg.value =
        getPostIdResp.post!.thumbnail!.imageUrl!.toString();
    productDetailPageModelObj.value.imageOneImg.value =
        getPostIdResp.post!.screenshotUrl!.s300px!.toString();
    productDetailPageModelObj.value.upvoteCounterTxt.value =
        getPostIdResp.post!.votesCount!.toString();
    productDetailPageModelObj.value.description.value =
        getPostIdResp.post!.description!.toString();

    productDetailPageModelObj.value.topics.value = getPostIdResp.post!.topics!;
    productDetailPageModelObj.value.makers.value = getPostIdResp.post!.makers!;
    productDetailPageModelObj.value.comments.value = getPostIdResp.post!.comments!;
    productDetailPageModelObj.value.media.value = getPostIdResp.post!.media!;
  }

  void _onFetchPostIdError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }
}
