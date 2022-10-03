import '/core/app_export.dart';
import 'package:product_hunt/presentation/topic_product_list_screen/models/topic_product_list_model.dart';
import 'package:flutter/material.dart';
import 'package:product_hunt/data/models/all/get_all_resp.dart';
import 'package:product_hunt/data/apiClient/api_client.dart';
import '../models/topic_product_list_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TopicProductListController extends GetxController {
  var topicid = Get.arguments[NavigationArgs.topicid];
  var topicname = Get.arguments[NavigationArgs.topicname];
  Rx<TopicProductListModel> topicProductListModelObj =
      TopicProductListModel().obs;

  GetAllResp getAllResp = GetAllResp();

  @override
  void onReady() {
    super.onReady();
    Map<String, dynamic> queryParams = {
      "search[topic]": Get.arguments[NavigationArgs.topicid.toString()]
      //"search[topic]": "1062"
    };

    this.callFetchAll(
      successCall: _onOnReadySuccess,
      errCall: _onOnReadyError,
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

  void _onOnReadySuccess() {
    List<TopicProductListItemModel> listrectanglefour3ItemModelList = [];
    if (getAllResp!.posts! != null && getAllResp!.posts!.isNotEmpty) {
      for (var element in getAllResp!.posts!) {
        var listrectanglefour3ItemModel = TopicProductListItemModel();
        listrectanglefour3ItemModel.id.value = element.id!.toString();
        listrectanglefour3ItemModel.nimbusTxt.value = element.name!.toString();
        listrectanglefour3ItemModel.cloudbasedecoTxt.value =
            element.tagline!.toString();
        listrectanglefour3ItemModel.ninetyFourTxt.value =
            element.votesCount!.toString();
        listrectanglefour3ItemModel.rectangleFourImg.value =
            element.thumbnail!.imageUrl!.toString();
        listrectanglefour3ItemModelList.add(listrectanglefour3ItemModel);
      }
    }
    topicProductListModelObj.value.topicProductListItemList.value =
        listrectanglefour3ItemModelList;
  }

  void _onOnReadyError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }
}
