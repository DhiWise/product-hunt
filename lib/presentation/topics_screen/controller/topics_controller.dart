import 'package:product_hunt/data/models/topics/get_topics_resp.dart';
import 'package:product_hunt/presentation/topics_screen/models/recent_topics_item_model.dart';

import '/core/app_export.dart';
import 'package:product_hunt/presentation/topics_screen/models/topics_model.dart';
import 'package:flutter/material.dart';
import 'package:product_hunt/data/models/graphql/post_graphql_resp.dart';
import 'package:product_hunt/data/apiClient/api_client.dart';
import 'package:product_hunt/data/models/graphql/post_graphql_req.dart';
import '../models/most_followed_topics_item_model.dart';

class TopicsController extends GetxController {
  Rx<TopicsModel> topicsModelObj = TopicsModel().obs;

  PostGraphqlResp postGraphqlResp = PostGraphqlResp();
  GetTopicsResp getTopicsResp = GetTopicsResp();

  @override
  void onReady() {
    super.onReady();
    PostGraphqlReq postGraphqlReq = PostGraphqlReq();
    Map<String, dynamic> queryParams = {
      "query": '{topics(order:FOLLOWERS_COUNT,first:4){nodes{id,name,followersCount,image,isFollowing,postsCount}}}'
    };
    this.callCreateGraphql(
      postGraphqlReq.toJson(),
      successCall: _onOnReadySuccess,
      errCall: _onOnReadyError,
      queryParams: queryParams,
    );

    Map<String, dynamic> queryParamsTopics = {
      "sort_by": "created_at",
      "order": "desc",
      "per_page" : "4"
    };
    this.callFetchTopics(
      successCall: _onOnReadyTopicsSuccess,
      errCall: _onOnReadyTopicsError,
      queryParams: queryParamsTopics,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

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

  void _onOnReadySuccess() {
    List<MostFollowedTopicsItemModel> listrectanglefourFourItemModelList =
    [];
    if (postGraphqlResp!.data!.topics!.nodes! != null &&
        postGraphqlResp!.data!.topics!.nodes!.isNotEmpty) {
      for (var element in postGraphqlResp!.data!.topics!.nodes!) {
        var listrectanglefourFourItemModel = MostFollowedTopicsItemModel();
        listrectanglefourFourItemModel.id.value =
            element.id!.toString();
        listrectanglefourFourItemModel.artificialInteOneTxt.value =
            element.name!.toString();
        listrectanglefourFourItemModel.rectangleFourFourImg.value =
            element.image!.toString();
        listrectanglefourFourItemModel.followersCount.value =
            element.followersCount!.toString();
        listrectanglefourFourItemModelList.add(listrectanglefourFourItemModel);
      }
    }
    topicsModelObj.value.mostFollowedTopicsItemList.value =
        listrectanglefourFourItemModelList;
  }

  void _onOnReadyError() {}

  void callFetchTopics({VoidCallback? successCall,
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

  void _onOnReadyTopicsSuccess() {
    List<RecentTopicsItemModel> listrectanglefourItemModelList = [];
    if (getTopicsResp!.topics! != null && getTopicsResp!.topics!.isNotEmpty) {
      for (var element in getTopicsResp!.topics!) {
        var listrectanglefourItemModel = RecentTopicsItemModel();
        listrectanglefourItemModel.id.value =
            element.id!.toString();
        listrectanglefourItemModel.artificialInteOneTxt.value =
            element.name!.toString();
        listrectanglefourItemModel.followersCount.value =
            element.followersCount!.toString();
        listrectanglefourItemModel.rectangleFourFourImg.value =
            element.image!.toString();
        listrectanglefourItemModelList.add(listrectanglefourItemModel);
      }
    }
    topicsModelObj.value.recentTopicsItemList.value =
        listrectanglefourItemModelList;
  }

  void _onOnReadyTopicsError() {}
}
