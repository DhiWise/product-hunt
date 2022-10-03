import 'package:product_hunt/data/models/graphql/post_graphql_resp.dart';

import '/core/app_export.dart';
import 'package:product_hunt/presentation/topics_list_with_searching_screen/models/topics_list_with_searching_model.dart';
import 'package:flutter/material.dart';
import 'package:product_hunt/data/models/topics/get_topics_resp.dart';
import 'package:product_hunt/data/apiClient/api_client.dart';
import '../models/topics_list_with_searching_item_model.dart';

class TopicsListWithSearchingController extends GetxController {
  TextEditingController groupFourteenController = TextEditingController();

  Rx<TopicsListWithSearchingModel> topicsListWithSearchingModelObj =
      TopicsListWithSearchingModel().obs;

  GetTopicsResp getTopicsResp = GetTopicsResp();
  PostGraphqlResp postGraphqlResp = PostGraphqlResp();

  @override
  void onReady() {
    super.onReady();
    Map<String, dynamic> queryParams = {
      "sort_by": "created_at",
      "order": "desc",
    };
    this.callFetchTopics(
      successCall: _onOnReadySuccess,
      errCall: _onOnReadyError,
      queryParams: queryParams,
    );
  }

  @override
  void onClose() {
    super.onClose();
    groupFourteenController.dispose();
  }

  void callFetchTopics(
      {VoidCallback? successCall,
        VoidCallback? errCall,
        Map<String, dynamic> queryParams = const {}}) async {
    return Get.find<ApiClient>().fetchTopics(
        headers: {
          'Authorization': "Bearer ${Constants.token}",
        },
        onSuccess: (resp) {
          onFetchTopicsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchTopicsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        queryParams: queryParams);
  }

  void onFetchTopicsSuccess(var response) {
    getTopicsResp = GetTopicsResp.fromJson(response);
  }

  void onFetchTopicsError(var err) {
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
    List<TopicsListWithSearchingItemModel> listrectanglefour1ItemModelList = [];
    if (getTopicsResp!.topics! != null && getTopicsResp!.topics!.isNotEmpty) {
      for (var element in getTopicsResp!.topics!) {
        var listrectanglefour1ItemModel = TopicsListWithSearchingItemModel();
        listrectanglefour1ItemModel.id.value =
        element.id.toString();
        listrectanglefour1ItemModel.artificialInteTxt.value =
            element.name!.toString();
        listrectanglefour1ItemModel.k41kFollowersTxt.value =
            element.followersCount!.toString();
        listrectanglefour1ItemModel.rectangleFourImg.value =
            element.image!.toString();
        listrectanglefour1ItemModelList.add(listrectanglefour1ItemModel);
      }
    }
    topicsListWithSearchingModelObj.value.topicsListWithSearchingItemList.value =
        listrectanglefour1ItemModelList;
  }

  void _onOnReadyError() {}

  void callCreateGraphql(Map req,
      {VoidCallback? successCall,
        VoidCallback? errCall,
        Map<String, dynamic> queryParams = const {}}) async {

    return Get.find<ApiClient>().createGraphql(
        headers: {
          'Authorization': "Bearer ${Constants.token}",
        },
        onSuccess: (resp) {
          onCreateGraphqlSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateGraphqlError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req,
        queryParams: queryParams);
  }

  void onCreateGraphqlSuccess(var response) {
    postGraphqlResp = PostGraphqlResp.fromJson(response);

    List<TopicsListWithSearchingItemModel> listrectanglefour1ItemModelList =
    [];
    if (postGraphqlResp!.data!.topics!.nodes! != null &&
        postGraphqlResp!.data!.topics!.nodes!.isNotEmpty) {
      for (var element in postGraphqlResp!.data!.topics!.nodes!) {
        var listrectanglefour1ItemModel = TopicsListWithSearchingItemModel();
        listrectanglefour1ItemModel.id.value =
            element.id!;
        listrectanglefour1ItemModel.artificialInteTxt.value =
            element.name!.toString();
        listrectanglefour1ItemModel.k41kFollowersTxt.value =
            element.followersCount!.toString();
        listrectanglefour1ItemModel.rectangleFourImg.value =
            element.image != null ? element.image!.toString() : "https://ph-files.imgix.net/1146296a-01d3-4903-afd9-d715de2938d6.png?auto=forma";
        listrectanglefour1ItemModelList.add(listrectanglefour1ItemModel);
      }
    }
    topicsListWithSearchingModelObj.value.topicsListWithSearchingItemList.value =
        listrectanglefour1ItemModelList;
  }

  void onCreateGraphqlError(var err) {
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

}
